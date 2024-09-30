Start-Process -FilePath "$env:LOCALAPPDATA\GitHubDesktop\Update.exe" -ArgumentList "--uninstall -s" -Wait
Remove-Item -Path "$env:LOCALAPPDATA\GitHubDesktop" -Recurse -Force
