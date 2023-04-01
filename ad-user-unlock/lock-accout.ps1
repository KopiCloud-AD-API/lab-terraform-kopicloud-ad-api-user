Import-Module ActiveDirectory
Import-Module GroupPolicy
 
$LockoutBadCount = ((([xml](Get-GPOReport -Name "Default Domain Policy" -ReportType Xml)).GPO.Computer.ExtensionData.Extension.Account | Where-Object name -eq LockoutBadCount).SettingNumber)
$Password = ConvertTo-SecureString 'NotMyPassword' -AsPlainText -Force
$Username = "guillermo"
$ADServer = "kopi-dev-dc1"

for ($i = 1; $i -le $LockoutBadCount; $i++) { 
    Invoke-Command -ComputerName $ADServer {Get-Process} -Credential (New-Object System.Management.Automation.PSCredential ($($Username), $Password)) -ErrorAction SilentlyContinue            
}
 
Write-Output "$($Username) has been locked out: $((Get-ADUser -Identity $Username -Properties LockedOut).LockedOut)"
