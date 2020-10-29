$NSXTServices = Get-NsxtService 

#importing the NSX-T PS Module
install-module VMware.PowerCLI
import-module VMware.VimAutomation.Nsxt

get-module -Name "VMware.VimAutomation.Nsxt" 
get-command -Module VMware.VimAutomation.Nsxt

if (!(get-module -Name "VMware.VimAutomation.Nsxt")) {
    $null = Import-Module -Name "VMware.VimAutomation.Nsxt"
    Write-host "Immport VMware NSX-T POST Module"
}
# "if no module then import module"

#authentication
Connect-NsxtServer -Server 85.255.208.50

$Global:DefaultNsxtServers | Select-Object *

#Demo only / password is not working
if (!($Global:DefaultNsxtServers)) {$null = Connect-NsxtServer -Server 85.255.208.50 -user "admin" -Password "SuperSafePassword01!"}

Disconnect-NsxtServer -Confirm:$false

#automate the crap out of it
$cred = Get-Credential

$cred.Password 

$cred.Password | ConvertFrom-SecureString | out-file ./password.txt 

$user = "admin"
$passwd = Get-Content ./password.txt | ConvertTo-SecureString                                          
$cred = New-Object System.Management.Automation.PSCredential($user, $passwd)      

if ($Global:DefaultNsxtServers.count -eq 0) {$null = Connect-NsxtServer -Server 85.255.208.50 -Credential $cred}

$Global:DefaultNsxtServers

#working with the Get-NsxtService cmdlet

Get-NsxtService -Name *switches 

Get-NsxtService -Name com.vmware.nsx.logical_switches

$LogicalSwitch = Get-NsxtService -Name com.vmware.nsx.logical_switches
$TransportZones = Get-NsxtService -Name com.vmware.nsx.transport_zones

$LogicalSwitch | get-member

#retrieve all configured logical switches

$LogicalSwitch.list()
#returns API call overview

$LogicalSwitch.list().results
#still a big amount of crap

$LogicalSwitch.list().results | Select-Object display_name, admin_state
#that's more like it

#creating logical switches (automatically)
$LogicalSwitchspec = $LogicalSwitch.help.create.logical_switch.Create()

$LogicalSwitchspec

$LogicalSwitchspec.description = "just adding a single LS at a time .. boring"
$LogicalSwitchspec.display_name = "thisisjustcrap"
$LogicalSwitchspec.transport_zone_id = $TransportZones.list().results.id[0]
$LogicalSwitchspec.admin_state = "UP"
$LogicalSwitchspec.replication_mode = "MTEP"

$LogicalSwitch.create($LogicalSwitchspec)

$LogicalSwitch.list().results | Select-Object display_name, admin_state

#automate the crap out of it
$LogicalSwitchExport = $LogicalSwitch.help.create.logical_switch.Create()

$LogicalSwitchExport | Select-Object display_name, description, transport_zone_id, admin_state, replication_mode| Export-Csv ./LogicalswitchSpec.csv
invoke-item ./LogicalswitchSpec.csv

$TransportZones.list().results[0] | Select-Object display_name, id

$LogicalSwitchImport = import-csv ./LogicalswitchSpec.csv -Delimiter ","

$LogicalSwitchImport 

$LogicalSwitchImport.ForEach({$LogicalSwitch.create($_)})

$LogicalSwitch.list().results | Select-Object display_name, admin_state

#Out-gridview alternative
if (!(get-module -name PSWriteHTML)) {Install-Module PSWriteHTML}

$LogicalSwitch.list().results | Select-Object display_name, id | out-htmlview

$removeLogicalSwitchimport = import-csv ./Out-HTMLView.csv

$removeLogicalSwitchimport.ForEach({$LogicalSwitch.delete($_.id)})

$LogicalSwitch.list().results | Select-Object display_name

#Another example: security groups
$nsgroups = Get-NsxtService -Name com.vmware.nsx.ns_groups
$nsgroupexport = $nsgroups.help.create.ns_group.Create()

$nsgroupexport | Select-Object display_name, description | Export-Csv nsgroups.csv
Invoke-Item ./nsgroups.csv

$nsgroupimport = import-csv ./nsgroups.csv

$nsgroupimport

$nsgroupimport.foreach({$nsgroups.create($_)})

$nsgroups.list().results | Select-Object display_name, id | Out-HtmlView

$removensgroupimport = import-csv ./Out-HTMLView(1).csv
$removensgroupimport.foreach({$nsgroup.delete($_.id)})

#Le grande finale / bonus demo

New-Nsxt_logical_switch -display_name "CreatedNatively" -description "nlvmug" -admin_state "UP" -replication_mode "MTEP" -transport_zone_id "fc97f1b1-e4df-4085-aecc-72cba6bbadcc"