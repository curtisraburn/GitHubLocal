$domain = "autobuild.com"
$password = "C0ncerto!!!!" | ConvertTo-SecureString -asPlainText -Force
$username = "$autobuild\concerto" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential 
restart-computer -computername "custscrptextn" -Force