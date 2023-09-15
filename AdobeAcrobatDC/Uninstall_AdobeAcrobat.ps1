#Kill Adobe Acrobat Reader process
Stop-Process -Name acrobat -Force

#Get Adobe Reader GUID
$Adobe = (Get-ItemProperty -Path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Where DisplayName -Like "Adobe Acrobat*").PSChildName

#Uninstall Adobe Acrobat
msiexec.exe /X $Adobe /qn

#cleanup
Remove-Item -Path "HKLM:\Software\Adobe\Adobe Acrobat" -Recurse -Force
Remove-Item -Path "C:\Program Files\Adobe\Acrobat DC" -Recurse -Force
