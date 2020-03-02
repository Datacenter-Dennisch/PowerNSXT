function CreateFunction {

    Param
    (
        [Parameter()]
        [string]$Operation,
        [string]$ObjName,
        [psobject]$Parameters,
        [string]$FilePath,
        $NSXTServicename
    )
    switch ($Operation) {
        create {$FunctionOperator = "New"}
        delete {$FunctionOperator = "Remove"}
        list   {$FunctionOperator = "Get"}
        update {$FunctionOperator = "Set"}
        default {return}
    }
    [string]$ExportParameters = $null
    [string]$ExportSpecification = $null
    $ObjName = $ObjName.replace(" ","_")

    foreach ($Paramitem in ($Parameters | get-member -MemberType NoteProperty)) {
        $ExportParameterItem = $Paramitem.Name
        $ExportParameters += "$"+$ExportParameterItem+","

        $ExportSpecificationItem = $Paramitem.Name+" = $"+$ExportParameterItem+"
        "
        $ExportSpecification += $ExportSpecificationItem 
    }
    #Remove last characther & add a enter
    $ExportParameters =($ExportParameters.Substring(0,$ExportParameters.Length-1)).Replace(",",",
        ")
        
    
    $Export = '
Function '+$FunctionOperator+'-'+$ObjName+' {
    Param
    (
        ' + $ExportParameters + '
    )

    Begin 
    {}

    Process {
        $Specification = new-object psobject -Property @{
        ' + $ExportSpecification + '
        }
        $NSXTService = get-nsxtservice -name '+$NSXTServicename+'
        $NSXTService.'+$Operation+'($Specification)
    }

    End
    {}
} #End of Function
'
    Add-Content $FilePath $Export
}

$filepath = "/Users/dennisch/Documents/script/nlvmug/NativePSModuleNsxt.psm1"

#$NSXTServices = Get-NsxtService # -Name *switches
foreach ($NSXTService in $NSXTServices) {
    $Cmdlets = ($NSXTService | get-member | Where-Object {$_.Membertype -eq "CodeMethod"}).Name
    if ($Cmdlets -contains "create") {
        foreach ($Cmdlet in $Cmdlets) {
            
            Switch ($Cmdlet) {
                create {
                    $ObjName = ($NSXTService.help.create | Get-Member -MemberType NoteProperty | Where-Object {$_.Name -ne "Definition" -and $_.Name -ne "Documentation" -and $_.Name -ne "Errors" -and $_.Name -ne "Returns"}).Name
                    if ($ObjName) {
                        $FunctionName = "Nsxt_$($ObjName)"
                        $Params = $NSXTService.help.create.$ObjName.create()
                        CreateFunction -Operation $Cmdlet -ObjName $FunctionName -FilePath $filepath -Parameters $Params -NSXTServicename $NSXTService.Name
                    }
                }
                default {
                    $ObjName = ($NSXTService.help.create| Get-Member -MemberType NoteProperty | Where-Object {$_.Name -ne "Definition" -and $_.Name -ne "Documentation" -and $_.Name -ne "Errors" -and $_.Name -ne "Returns"}).Name 
                    if ($ObjName) {   
                        $FunctionName = "Nsxt_$($ObjName)"
                        $Params = $NSXTService.help.$Cmdlet
                        CreateFunction -Operation $Cmdlet -ObjName $FunctionName -FilePath $filepath -Parameters $Params -NSXTServicename $NSXTService.Name
                
                    }
                }
            }
        }
    }
}

import-module $filepath 
$filename = $filepath.Split("/")[6]
$modulename = $filename.split(".")[0]
get-command -module $modulename
$count = (get-command -module $modulename).count
write-host "script produces $count POSH Cmdlets"
# Remove-Module $modulename