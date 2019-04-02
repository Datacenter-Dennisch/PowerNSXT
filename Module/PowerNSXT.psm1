

function Invoke-NsxTRestMethod {

    <#
    .SYNOPSIS
    Constructs and performs a valid NSX REST call.
    .DESCRIPTION
    Invoke-NsxTRestMethod uses either a specified connection object as returned
    by Connect-NsxServer, or the $DefaultNSXTConnection global variable if
    defined to construct a REST api call to the NSX-T API.
    Invoke-NsxTRestMethod constructs the appropriate request headers required by
    the NSX-T API, including authentication details (built from the connection
    object), required content type and includes any custom headers specified by
    the caller that might be required by a specific API resource, before making
    the rest call and returning the appropriate XML object to the caller.
    .EXAMPLE
    Invoke-NsxTRestMethod -Method get -Uri "/api/2.0/vdn/scopes"
    Performs a 'Get' against the URI /api/2.0/vdn/scopes and returns the xml
    object respresenting the NSX-T API XML reponse.  This call requires the
    $DefaultNsxServer variable to exist and be populated with server and
    authentiation details as created by Connect-NsxTServer -DefaultConnection
    .EXAMPLE
    $MyConnection = Connect-NsxTServer -Server OtherNsxManager -DefaultConnection:$false
    Invoke-NsxTRestMethod -Method get -Uri "/api/2.0/vdn/scopes" -connection $MyConnection
    Creates a connection variable for a non default NSX server, performs a
    'Get' against the URI /api/2.0/vdn/scopes and returns the xml
    object respresenting the NSX-T API XML reponse.
    #>

    [CmdletBinding(DefaultParameterSetName="ConnectionObj")]

    param (
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #PSCredential object containing authentication details to be used for connection to NSX-T Manager API
            [System.Management.Automation.PSCredential]$cred,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #NSX-T Manager ip address or FQDN
            [string]$server,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #TCP Port on -server to connect to
            [int]$port,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #Protocol - HTTP/HTTPS
            [string]$protocol,
        [Parameter (Mandatory=$false,ParameterSetName="Parameter")]
            #Validates the certificate presented by NSX-T Manager for HTTPS connections
            [bool]$ValidateCertificate,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
        [Parameter (ParameterSetName="ConnectionObj")]
            #REST method of call.  Get, Put, Post, Delete, Patch etc
            [string]$method,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
        [Parameter (ParameterSetName="ConnectionObj")]
            #URI of resource (/api/1.0/myresource).  Should not include protocol, server or port.
            [string]$URI,
        [Parameter (Mandatory=$false,ParameterSetName="Parameter")]
        [Parameter (ParameterSetName="ConnectionObj")]
            #Content to be sent to server when method is Put/Post/Patch
            [string]$body = "",
        [Parameter (Mandatory=$false,ParameterSetName="ConnectionObj")]
            #Pre-populated connection object as returned by Connect-NsxServer
            [psObject]$connection,
        [Parameter (Mandatory=$false,ParameterSetName="ConnectionObj")]
            #Hashtable collection of KV pairs representing additional headers to send to the NSX-T Manager during REST call
            [System.Collections.Hashtable]$extraheader,
        [Parameter (Mandatory=$false,ParameterSetName="ConnectionObj")]
            #Request timeout value - passed directly to underlying invoke-restmethod call
            [int]$Timeout=600
    )

    Write-Debug "$($MyInvocation.MyCommand.Name) : ParameterSetName : $($pscmdlet.ParameterSetName)"

    if ($pscmdlet.ParameterSetName -eq "Parameter") {
        if ( -not $ValidateCertificate) {
            #allow untrusted certificate presented by the remote system to be accepted
            #[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
        }
    }
    else {

        #ensure we were either called with a connection or there is a defaultConnection (user has
        #called connect-nsxserver)
        #Little Grr - $connection is a defined variable with no value so we cant use test-path
        if ( $connection -eq $null) {

            #Now we need to assume that DefaultNSXTConnection does not exist...
            if ( -not (test-path variable:global:DefaultNSXTConnection) ) {
                throw "Not connected.  Connect to NSX-T Manager with Connect-NsxTServer first."
            }
            else {
                Write-Debug "$($MyInvocation.MyCommand.Name) : Using default connection"
                $connection = $DefaultNSXTConnection
            }
        }


        if ( -not $connection.ValidateCertificate ) {
            #allow untrusted certificate presented by the remote system to be accepted
            #[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
        }

        $cred = $connection.credential
        $server = $connection.Server
        $port = $connection.Port
        $protocol = $connection.Protocol

    }

    $headerDictionary = @{}
    $base64cred = [system.convert]::ToBase64String(
        [system.text.encoding]::ASCII.Getbytes(
            "$($cred.GetNetworkCredential().username):$($cred.GetNetworkCredential().password)"
        )
    )
    $headerDictionary.add("Authorization", "Basic $Base64cred")

    if ( $extraHeader ) {
        foreach ($header in $extraHeader.GetEnumerator()) {
            write-debug "$($MyInvocation.MyCommand.Name) : Adding extra header $($header.Key ) : $($header.Value)"
            if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                if ( $connection.DebugLogging ) {
                    Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  Extra Header being added to following REST call.  Key: $($Header.Key), Value: $($Header.Value)"
                }
            }
            $headerDictionary.add($header.Key, $header.Value)
        }
    }
    $FullURI = "$($protocol)://$($server):$($Port)$($URI)"
    write-debug "$($MyInvocation.MyCommand.Name) : Method: $method, URI: $FullURI, Body: `n$($body )"

    if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
        if ( $connection.DebugLogging ) {
            Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  REST Call to NSX-T Manager via invoke-restmethod : Method: $method, URI: $FullURI, Body: `n$($body)"
        }
    }

    #do rest call
    try {
        if ( $PsBoundParameters.ContainsKey('Body')) {
            $response = invoke-restmethod -method $method -headers $headerDictionary -ContentType "application/json" -uri $FullURI -body $body -TimeoutSec $Timeout -SkipCertificateCheck
        } else {
            $response = invoke-restmethod -method $method -headers $headerDictionary -ContentType "application/json" -uri $FullURI -TimeoutSec $Timeout -SkipCertificateCheck
        }
    }
    catch {

        #Get response from the exception
        $response = $_.exception.response
        if ($response) {
            $responseStream = $_.exception.response.GetResponseStream()
            $reader = New-Object system.io.streamreader($responseStream)
            $responseBody = $reader.readtoend()
            $ErrorString = "Invoke-NsxTRestMethod : Exception occured calling invoke-restmethod. $($response.StatusCode.value__) : $($response.StatusDescription) : Response Body: $($responseBody)"

            if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                if ( $connection.DebugLogging ) {
                    Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  REST Call to NSX-T Manager failed: $ErrorString"
                }
            }

            throw $ErrorString
        }
        else {
            if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                if ( $connection.DebugLogging ) {
                    Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  REST Call to NSX-T Manager failed with exception: $($_.Exception.Message).  ScriptStackTrace:`n $($_.ScriptStackTrace)"
                }
            }
            throw $_
        }


    }
    #switch ( $response ) {
    ##    { $_ -is [xml] } { $FormattedResponse = "`n$($response.outerxml | Format-Xml)" }
    #    { $_ -is [System.String] } { $FormattedResponse = $response }
    #    { $_ -is [json] } { $FormattedResponse = $response }
    #    default { $formattedResponse = "Response type unknown" }
    #}
    $FormattedResponse = $response 

    write-debug "$($MyInvocation.MyCommand.Name) : Response: $FormattedResponse"
    if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
        if ( $connection.DebugLogging ) {
            Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  Response: $FormattedResponse"
        }
    }

    #Workaround for bug in invoke-restmethod where it doesnt complete the tcp session close to our server after certain calls.
    #We end up with connectionlimit number of tcp sessions in close_wait and future calls die with a timeout failure.
    #So, we are getting and killing active sessions after each call.  Not sure of performance impact as yet - to test
    #and probably rewrite over time to use invoke-webrequest for all calls... PiTA!!!! :|

    $ServicePoint = [System.Net.ServicePointManager]::FindServicePoint($FullURI)
    $ServicePoint.CloseConnectionGroup("") | out-null
    write-debug "$($MyInvocation.MyCommand.Name) : Closing connections to $FullURI."

    #Return
    $response
}

function Invoke-NsxTWebRequest {

    <#
    .SYNOPSIS
    Constructs and performs a valid NSX REST call and returns a response object
    including response headers.
    .DESCRIPTION
    Invoke-NsxTWebRequest uses either a specified connection object as returned
    by Connect-NsxServer, or the $DefaultNSXTConnection global variable if
    defined to construct a REST api call to the NSX-T API.
    Invoke-NsxTWebRequest constructs the appropriate request headers required by
    the NSX-T API, including authentication details (built from the connection
    object), required content type and includes any custom headers specified by
    the caller that might be required by a specific API resource, before making
    the rest call and returning the resulting response object to the caller.
    The Response object includes the response headers unlike
    Invoke-NsxTRestMethod.
    .EXAMPLE
    $MyConnection = Connect-NsxTServer -Server OtherNsxManager -DefaultConnection:$false
    $response = invoke-NsxTWebRequest -method "post" -uri $URI -body $body -connection $MyConnection
    $edgeId = $response.Headers.Location.split("/")[$response.Headers.Location.split("/").GetUpperBound(0)]
    Creates a connection variable for a non default NSX server, performs a 'Post'
    against the URI $URI and then retrieves details from the Location header
    included in the response object.
    #>

    [CmdletBinding(DefaultParameterSetName="ConnectionObj")]

    param (
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #PSCredential object containing authentication details to be used for connection to NSX-T Manager API
            [System.Management.Automation.PSCredential]$cred,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #NSX-T Manager ip address or FQDN
            [string]$server,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #TCP Port on -server to connect to
            [int]$port,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #Protocol - HTTP/HTTPS
            [string]$protocol,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
            #Validates the certificate presented by NSX-T Manager for HTTPS connections
            [bool]$ValidateCertificate,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
        [Parameter (ParameterSetName="ConnectionObj")]
            #REST method of call.  Get, Put, Post, Delete, Patch etc
            [string]$method,
        [Parameter (Mandatory=$true,ParameterSetName="Parameter")]
        [Parameter (ParameterSetName="ConnectionObj")]
            #URI of resource (/api/1.0/myresource).  Should not include protocol, server or port.
            [string]$URI,
        [Parameter (Mandatory=$false,ParameterSetName="Parameter")]
        [Parameter (ParameterSetName="ConnectionObj")]
            #Content to be sent to server when method is Put/Post/Patch
            [string]$body = "",
        [Parameter (Mandatory=$false,ParameterSetName="ConnectionObj")]
            #Pre-populated connection object as returned by Connect-NsxServer
            [psObject]$connection,
        [Parameter (Mandatory=$false,ParameterSetName="ConnectionObj")]
            #Hashtable collection of KV pairs representing additional headers to send to the NSX-T Manager during REST call
            [System.Collections.Hashtable]$extraheader,
        [Parameter (Mandatory=$false,ParameterSetName="ConnectionObj")]
            #Request timeout value - passed directly to underlying invoke-restmethod call
            [int]$Timeout=600
    )

    Write-Debug "$($MyInvocation.MyCommand.Name) : ParameterSetName : $($pscmdlet.ParameterSetName)"

    if ($pscmdlet.ParameterSetName -eq "Parameter") {
        if ( -not $ValidateCertificate) {
            #allow untrusted certificate presented by the remote system to be accepted
            #[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
        }
    }
    else {

        #ensure we were either called with a connection or there is a defaultConnection (user has
        #called connect-nsxserver)
        #Little Grr - $connection is a defined variable with no value so we cant use test-path
        if ( $connection -eq $null) {

            #Now we need to assume that DefaultNSXTConnection does not exist...
            if ( -not (test-path variable:global:DefaultNSXTConnection) ) {
                throw "Not connected.  Connect to NSX-T Manager with Connect-NsxTServer first."
            }
            else {
                Write-Debug "$($MyInvocation.MyCommand.Name) : Using default connection"
                $connection = $DefaultNSXTConnection
            }
        }


        if ( -not $connection.ValidateCertificate ) {
            #allow untrusted certificate presented by the remote system to be accepted
            #[System.Net.ServicePointManager]::CertificatePolicy = New-Object TrustAllCertsPolicy
        }

        $cred = $connection.credential
        $server = $connection.Server
        $port = $connection.Port
        $protocol = $connection.Protocol

    }

    $headerDictionary = @{}
    $base64cred = [system.convert]::ToBase64String(
        [system.text.encoding]::ASCII.Getbytes(
            "$($cred.GetNetworkCredential().username):$($cred.GetNetworkCredential().password)"
        )
    )
    $headerDictionary.add("Authorization", "Basic $Base64cred")

    if ( $extraHeader ) {
        foreach ($header in $extraHeader.GetEnumerator()) {
            write-debug "$($MyInvocation.MyCommand.Name) : Adding extra header $($header.Key ) : $($header.Value)"
            if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                if ( $connection.DebugLogging ) {
                    Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  Extra Header being added to following REST call.  Key: $($Header.Key), Value: $($Header.Value)"
                }
            }
            $headerDictionary.add($header.Key, $header.Value)
        }
    }
    $FullURI = "$($protocol)://$($server):$($Port)$($URI)"
    write-debug "$($MyInvocation.MyCommand.Name) : Method: $method, URI: $FullURI, Body: `n$($body | Format-Xml)"

    if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
        if ( $connection.DebugLogging ) {
            Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  REST Call to NSX-T Manager via invoke-webrequest : Method: $method, URI: $FullURI, Body: `n$($body | Format-Xml)"
        }
    }

    #do rest call

    try {
        if (( $method -eq "put" ) -or ( $method -eq "post" )) {
            $response = invoke-webrequest -method $method -headers $headerDictionary -ContentType "application/xml" -uri $FullURI -body $body -TimeoutSec $Timeout
        } else {
            $response = invoke-webrequest -method $method -headers $headerDictionary -ContentType "application/xml" -uri $FullURI -TimeoutSec $Timeout
        }
    }
    catch {

        #Get response from the exception
        $response = $_.exception.response
        if ($response) {
            $responseStream = $_.exception.response.GetResponseStream()
            $reader = New-Object system.io.streamreader($responseStream)
            $responseBody = $reader.readtoend()
            $ErrorString = "invoke-NsxTWebRequest : Exception occured calling invoke-restmethod. $($response.StatusCode) : $($response.StatusDescription) : Response Body: $($responseBody)"

            if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                if ( $connection.DebugLogging ) {
                    Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  REST Call to NSX-T Manager failed: $ErrorString"
                }
            }

            throw $ErrorString
        }
        else {

            if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                if ( $connection.DebugLogging ) {
                    Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  REST Call to NSX-T Manager failed with exception: $($_.Exception.Message).  ScriptStackTrace:`n $($_.ScriptStackTrace)"
                }
            }
            throw $_
        }


    }

    #Output the response header dictionary
    foreach ( $key in $response.Headers.Keys) {
        write-debug "$($MyInvocation.MyCommand.Name) : Response header item : $Key = $($Response.Headers.Item($key))"
        if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
            if ( $connection.DebugLogging ) {
                Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  Response header item : $Key = $($Response.Headers.Item($key))"
            }
        }
    }

    #And if there is response content...
    if ( $response.content ) {
        switch ( $response.content ) {
            { $_ -is [System.String] } {

                write-debug "$($MyInvocation.MyCommand.Name) : Response Body: $($response.content)"

                if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                    if ( $connection.DebugLogging ) {
                        Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  Response Body: $($response.content)"
                    }
                }
            }
            default {
                write-debug "$($MyInvocation.MyCommand.Name) : Response type unknown"

                if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
                    if ( $connection.DebugLogging ) {
                        Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  Response type unknown ( $($Response.Content.gettype()) )."
                    }
                }
            }
        }
    }
    else {
        write-debug "$($MyInvocation.MyCommand.Name) : No response content"

        if ( $pscmdlet.ParameterSetName -eq "ConnectionObj" ) {
            if ( $connection.DebugLogging ) {
                Add-Content -Path $Connection.DebugLogfile -Value "$(Get-Date -format s)  No response content."
            }
        }
    }

    $response
}

function Connect-NsxTServer {

    <#
    .SYNOPSIS
    Connects to the specified NSX server and constructs a connection object.
    .DESCRIPTION
    The Connect-NsxTServer cmdlet connects to the specified NSX server and
    retrieves version details.  Because the underlying REST protocol is not
    connection oriented, the 'Connection' concept relates to just validating
    endpoint details and credentials and storing some basic information used to
    reproduce the same outcome during subsequent NSX operations.
    .EXAMPLE
    Connect-NsxTServer -Server nsxserver -username admin -Password VMware1!
    Connects to the nsxserver 'nsxserver' with the specified credentials.  If a
    registered vCenter server is configured in NSX-T Manager, you are prompted to
    establish a PowerCLI session to that vCenter along with required
    authentication details.
    .EXAMPLE
    Connect-NsxTServer -Server nsxserver -username admin -Password VMware1! -DisableViAutoConnect
    Connects to the nsxserver 'nsxserver' with the specified credentials and
    supresses the prompt to establish a PowerCLI connection with the registered
    vCenter.
    .EXAMPLE
    Connect-NsxTServer -Server nsxserver -username admin -Password VMware1! -ViUserName administrator@vsphere.local -ViPassword VMware1!
    Connects to the nsxserver 'nsxserver' with the specified credentials and
    automatically establishes a PowerCLI connection with the registered
    vCenter using the credentials specified.
    .EXAMPLE
    $MyConnection = Connect-NsxTServer -Server nsxserver -username admin -Password VMware1! -DefaultConnection:$false
    Get-NsxTransportZone 'TransportZone1' -connection $MyConnection
    Connects to the nsxserver 'nsxserver' with the specified credentials and
    then uses the returned connection object in a subsequent call to
    Get-NsxTransportZone.  The $DefaultNSXTConnection parameter is not populated
    Note: Any PowerNSXT cmdlets will fail if the -connection parameters is not
    specified and the $DefaultNSXTConnection variable is not populated.
    Note:  Pipline operations involving multiple PowerNSXT commands that interact
    with the NSX-T API (not all) require that all cmdlets specify the -connection
    parameter (not just the fist one.)
    #>

    [CmdletBinding(DefaultParameterSetName="cred")]

    param (
        [Parameter (Mandatory=$true,ParameterSetName="cred",Position=1)]
        [Parameter (Mandatory=$true,ParameterSetName="userpass",Position=1)]
            #NSX-T Manager address or FQDN
            [ValidateNotNullOrEmpty()]
            [string]$Server,
        [Parameter (Mandatory=$false,ParameterSetName="cred")]
        [Parameter (ParameterSetName="userpass")]
            #TCP Port to connect to on -Server
            [ValidateRange(1,65535)]
            [int]$Port=443,
        [Parameter (Mandatory=$true,ParameterSetName="cred")]
            #PSCredential object containing NSX-T API authentication credentials
            [PSCredential]$Credential,
        [Parameter (Mandatory=$true,ParameterSetName="userpass")]
            #Username used to authenticate to NSX-T API
            [ValidateNotNullOrEmpty()]
            [string]$Username,
        [Parameter (Mandatory=$true,ParameterSetName="userpass")]
            #Password used to authenticate to NSX-T API
            [ValidateNotNullOrEmpty()]
            [string]$Password,
        [Parameter (Mandatory=$false,ParameterSetName="cred")]
        [Parameter (ParameterSetName="userpass")]
            #Validates the certificate presented by NSX-T Manager for HTTPS connections.  Defaults to False
            [ValidateNotNullOrEmpty()]
            [switch]$ValidateCertificate=$false,
        [Parameter (Mandatory=$false,ParameterSetName="cred")]
        [Parameter (ParameterSetName="userpass")]
            #NSX-T API transport protocol - HTTPS / HTTP .  Defaults to HTTPS
            [ValidateNotNullOrEmpty()]
            [string]$Protocol="https",
        [Parameter (Mandatory=$false,ParameterSetName="cred")]
        [Parameter (ParameterSetName="userpass")]
            #If True, the $DefaultNSXTConnection global variable is created and populated with connection details.
            #All PowerNSXT commands that use the NSX-T API will utilise this connection unless they are called with the -connection parameter.
            #Defaults to True
            [bool]$DefaultConnection=$true,
        [Parameter (Mandatory=$false)]
            #Enable DebugLogging of all API calls to $DebugLogFile.  Can be enabled on esisting connections with $connection.DebugLogging = $true.  Defaults to False.
            [switch]$DebugLogging=$false,
        [Parameter (Mandatory=$false)]
            #If DebugLogging is enabled, specifies the file to which output is written.  Defaults to $Env:temp\PowerNSXTLog-<user>@<server>-<datetime>.log
            [string]$DebugLogFile
    )

    if ($PSCmdlet.ParameterSetName -eq "userpass") {
        $Credential = new-object System.Management.Automation.PSCredential($Username, $(ConvertTo-SecureString $Password -AsPlainText -Force))
    }

    $URI = "/api/v1/node"

    #Test NSX connection
    try {
        $response = Invoke-NsxTRestMethod -cred $Credential -server $Server -port $port -protocol $Protocol -method "get" -uri $URI 
    }
    catch {

        Throw "Unable to connect to NSX-T Manager at $Server.  $_"
    }
    $connection = new-object PSCustomObject
    $Connection | add-member -memberType NoteProperty -name "Version" -value "$($response.node_version)" -force
    $Connection | add-member -memberType NoteProperty -name "KernelVersion" -value "$($response.kernel_version)"
    $Connection | add-member -memberType NoteProperty -name "Hostname" -value "$($response.hostname)"
    $Connection | add-member -memberType NoteProperty -name "Credential" -value $Credential -force
    $connection | add-member -memberType NoteProperty -name "Server" -value $Server -force
    $connection | add-member -memberType NoteProperty -name "Port" -value $port -force
    $connection | add-member -memberType NoteProperty -name "Protocol" -value $Protocol -force
    $connection | add-member -memberType NoteProperty -name "ValidateCertificate" -value $ValidateCertificate -force
    $connection | add-member -memberType NoteProperty -name "DebugLogging" -force -Value $DebugLogging

    #Debug log will contain all rest calls, request and response bodies, and response headers.
    if ( -not $PsBoundParameters.ContainsKey('DebugLogFile' )) {

        #Generating logfile name regardless of initial user pref on debug.  They can just flip the prop on the connection object at a later date to start logging...
        $dtstring = get-date -format "yyyy_MM_dd_HH_mm_ss"
        $DebugLogFile = "$($env:TEMP)\PowerNSXTLog-$($Credential.UserName)@$Server-$dtstring.log"

    }

    #If debug is on, need to test we can create the debug file first and throw if not...
    if ( $DebugLogging -and (-not ( new-item -path $DebugLogFile -Type file ))) { Throw "Unable to create logfile $DebugLogFile.  Disable debugging or specify a valid DebugLogFile name."}

    $connection | add-member -memberType NoteProperty -name "DebugLogFile" -force -Value $DebugLogFile

    #Set the default connection is required.
    if ( $DefaultConnection) { set-variable -name DefaultNSXTConnection -value $connection -scope Global }

    #Return the connection
    $connection
}

function Disconnect-NsxTServer {

    <#
    .SYNOPSIS
    Destroys the $DefaultNSXTConnection global variable if it exists.
    .DESCRIPTION
    REST is not connection oriented, so there really isnt a connect/disconnect
    concept.  Disconnect-NsxTServer, merely removes the $DefaultNSXTConnection
    variable that PowerNSXT cmdlets default to using.
    .EXAMPLE
    Connect-NsxTServer -Server nsxserver -username admin -Password VMware1!
    #>
    if (Get-Variable -Name DefaultNSXTConnection -scope global ) {
        Remove-Variable -name DefaultNSXTConnection -scope global
    }
}

function Get-NsxTIpSet{

    param (
        [Parameter ( Mandatory=$false,ValueFromPipeline=$true)]
            #resource object to retriev IPset object from
            [ValidateNotNullOrEmpty()]
            [PSCustomObject]$IpSetObject,
        [Parameter (Mandatory=$False)]
            #PowerNSXT Connection object.
            [ValidateNotNullOrEmpty()]
            [PSCustomObject]$Connection=$defaultNSXTConnection
    )

    begin {}

    process{

        $uri = "/api/v1/ip-sets"

        if ($IpSetObject) {
            if ($IpSetObject.resource_type -eq "IPSet") {
                $uri += "/$($IpSetObject.resource_id)"
            } else {
                ThrowError "Input object is not from resource_type: IPset"
            }
        }

        try {
            $response = invoke-nsxtrestmethod -connection $connection -method get -uri $uri
        }
        catch {
            throw "Unable to query from $($connection.Hostname)."
        }
       
        if ($response.results) {
            $returnarray = @()
            foreach ($resource in $response.results) {
                $return = New-Object PsObject -Property @{
                    resource_display_name = $resource.display_name
                    resource_ip_addresses = $resource.ip_addresses
                    resource_type = $resource.resource_type
                    resource_id = $resource.id                    
                }
                $returnarray += $return
            }
        } else {
            $returnarray = New-Object PsObject -Property @{
                resource_display_name = $response.display_name
                resource_ip_addresses = $response.ip_addresses
                resource_type = $response.resource_type
                resource_id = $response.id    
                }
        }
    }
    
    end{$returnarray}
}

function Remove-NsxTIpSet{

    param (
        [Parameter ( Mandatory=$false,ValueFromPipeline=$true)]
            #resource object to retriev IPset object from
            [ValidateNotNullOrEmpty()]
            [PSCustomObject]$IpSetObject,
        [Parameter (Mandatory=$False)]
            [switch]$confirm=$true,
        [Parameter (Mandatory=$False)]
            #PowerNSXT Connection object.
            [ValidateNotNullOrEmpty()]
            [PSCustomObject]$Connection=$defaultNSXTConnection
    )

    begin {}

    process{

        $uri = "/api/v1/ip-sets"

        if ($IpSetObject) {
            if ($IpSetObject.resource_type -eq "IPSet") {
                $uri += "/$($IpSetObject.resource_id)"
            } else {
                ThrowError "Input object is not from resource_type: IPset"
            }
        }
        
        if ( $confirm ) {
            $message  = "NSX-T IPSet object removal is permanent."
            $question = "Proceed with removal of NSX-T IPSET OBJECT $($IpSetObject.resource_display_name)?"

            $choices = New-Object Collections.ObjectModel.Collection[Management.Automation.Host.ChoiceDescription]
            $choices.Add((New-Object Management.Automation.Host.ChoiceDescription -ArgumentList '&Yes'))
            $choices.Add((New-Object Management.Automation.Host.ChoiceDescription -ArgumentList '&No'))

            $decision = $Host.UI.PromptForChoice($message, $question, $choices, 1)
        }
        else { $decision = 0 }
        if ($decision -eq 0) {

            try {
                Write-Progress -activity "Remove NSX-T IPSet Object $($IpSetObject.resource_display_name)"
                $response = invoke-nsxtrestmethod -connection $connection -method delete -uri $uri
                Write-Progress -activity "Remove NSX-T IPSet Object $($IpSetObject.resource_display_name)" -completed
            }
            catch {
                throw "Unable to query from $($connection.Hostname)."
            }
        }
    }

    end{}
}

function New-NsxTIpSet{

    param (
        [Parameter ( Mandatory=$true)]
            [ValidateNotNullOrEmpty()]
            [string]$Displayname,
        [Parameter ( Mandatory=$true)]
            [ValidateNotNullOrEmpty()]
            $IpElements,
        [Parameter (Mandatory=$False)]
            #PowerNSXT Connection object.
            [ValidateNotNullOrEmpty()]
            [PSCustomObject]$Connection=$defaultNSXTConnection
    )

    begin {}

    process{

        $uri = "/api/v1/ip-sets"

        #Check if IPelement is correctly formatted and add to IpBody

        $IPbody = """ip_addresses"" : ["
        foreach ($IpElement in $IpElements) {
            if ($IpElement -match "/") {
                if ((([system.net.ipaddress]$IpElement.Split('/')[0]).AddressFamily -match "InterNetwork") -and (1..32 -contains [int]$IpElement.Split('/')[1])) {
                    $IPbody += " ""$($IpElement)"","
                } else {
                    Throw "$($Ipelement) is in wrong Cidr notation"
                }
            } elseif ($IpElement -match "-") {
                [system.net.ipaddress]$IpAddressBegin, [system.net.ipaddress]$IpAddressEnd = $Ipelement.split('-') 
                $IPbody += " ""$($IpElement)"","
            } elseif (($IpElement -notmatch "/") -or ($IpElement -notmatch "-")) {
                if ([system.net.ipaddress]$IpElement) {
                $IPbody += " ""$($IpElement)"","
                } else {
                    Throw "$($Ipelement) is NOT a IpAdress"
                }
            }
        }
        $IPbody = $IPbody.TrimEnd(",") + " ]"

        #build JSON body for REST request
        $body = "{ ""display_name"" : ""$($Displayname) "", $($IPbody)}"

        #Execute REST API Call
        try {
            $response = invoke-nsxtrestmethod -connection $connection -method post -uri $uri -body $body
        }
        catch {
            throw "Unable to query from $($connection.Hostname)."
        }
        
        #Create response for return value
        if ($response.results) {
            $returnarray = @()
            foreach ($resource in $response.results) {
                $return = New-Object PsObject -Property @{
                    resource_display_name = $resource.display_name
                    resource_ip_addresses = $resource.ip_addresses
                    resource_type = $resource.resource_type
                    resource_id = $resource.id                    
                }
                $returnarray += $return
            }
        } else {
            $returnarray = New-Object PsObject -Property @{
                resource_display_name = $response.display_name
                resource_ip_addresses = $response.ip_addresses
                resource_type = $response.resource_type
                resource_id = $response.id    
                }
        }
    }
    
    end{$returnarray}
}

function Add-NsxTIpSetAddress{

    param (
        [Parameter ( Mandatory=$false,ValueFromPipeline=$true)]
            #resource object to retriev IPset object from
            [ValidateNotNullOrEmpty()]
            [PSCustomObject]$IpSetObject,
        [Parameter ( Mandatory=$true)]
            [ValidateNotNullOrEmpty()]
            $IpElements,
        [Parameter (Mandatory=$False)]
            #PowerNSXT Connection object.
            [ValidateNotNullOrEmpty()]
            [PSCustomObject]$Connection=$defaultNSXTConnection
    )

    begin {}

    process{
        #check if object is from resource_type IPSet


        $uri = "/api/v1/ip-sets"

        if ($IpSetObject) {
            if ($IpSetObject.resource_type -eq "IPSet") {
                $uri += "/$($IpSetObject.resource_id)"
            } else {
                ThrowError "Input object is not from resource_type: IPset"
            }
        }
        $uri += "?action=add_ip"

        #Check if IPelement is correctly formatted and add to IpBody

        $IPbody = "{""ip_addresses"" : ["
        foreach ($IpElement in $IpElements) {
            if ($IpElement -match "/") {
                if ((([system.net.ipaddress]$IpElement.Split('/')[0]).AddressFamily -match "InterNetwork") -and (1..32 -contains [int]$IpElement.Split('/')[1])) {
                    $IPbody += " ""$($IpElement)"","
                } else {
                    Throw "$($Ipelement) is in wrong Cidr notation"
                }
            } elseif ($IpElement -match "-") {
                [system.net.ipaddress]$IpAddressBegin, [system.net.ipaddress]$IpAddressEnd = $Ipelement.split('-') 
                $IPbody += " ""$($IpElement)"","
            } elseif (($IpElement -notmatch "/") -or ($IpElement -notmatch "-")) {
                if ([system.net.ipaddress]$IpElement) {
                $IPbody += " ""$($IpElement)"","
                } else {
                    Throw "$($Ipelement) is NOT a IpAdress"
                }
            }
        }
        $IPbody = $IPbody.TrimEnd(",") + " ]}"



        #Execute REST API Call
        try {
            $response = invoke-nsxtrestmethod -connection $connection -method post -uri $uri -body $IPbody
        }
        catch {
            throw "Unable to query from $($connection.Hostname)."
        }
        
        #Create response for return value
        if ($response.results) {
            $returnarray = @()
            foreach ($resource in $response.results) {
                $return = New-Object PsObject -Property @{
                    resource_display_name = $resource.display_name
                    resource_ip_addresses = $resource.ip_addresses
                    resource_type = $resource.resource_type
                    resource_id = $resource.id                    
                }
                $returnarray += $return
            }
        } else {
            $returnarray = New-Object PsObject -Property @{
                resource_display_name = $response.display_name
                resource_ip_addresses = $response.ip_addresses
                resource_type = $response.resource_type
                resource_id = $response.id    
                }
        }
    }
    
    end{$returnarray}
}
