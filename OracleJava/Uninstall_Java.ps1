#Get Java GUID
$java = (Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Where DisplayName -Like "Java*").PSChildName

#Uninstall Java
msiexec.exe /X $java /qn
