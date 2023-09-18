#Kill Adobe Acrobat Reader process
Stop-Process -Name putty -Force

#Get Adobe Reader GUID
$putty = (Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Where DisplayName -Like "PuTTY*").PSChildName

#Uninstall Adobe Acrobat
msiexec.exe /X $putty /qn
