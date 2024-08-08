#Take over default Windows wallpapers

#Light theme
& takeown /f C:\Windows\Web\Wallpaper\Windows\img0.jpg
& icacls C:\Windows\Web\Wallpaper\Windows\img0.jpg /Grant 'System:(F)'
#Dark theme
& takeown /f C:\Windows\Web\Wallpaper\Windows\img19.jpg
& icacls C:\Windows\Web\Wallpaper\Windows\img19.jpg /Grant 'System:(F)'

#Light theme
Remove-Item C:\Windows\Web\Wallpaper\Windows\img0.jpg -Force
Copy-Item $PSScriptRoot\<YourLightThemeImage.png> C:\Windows\Web\Wallpaper\Windows\img0.jpg
#Dark theme
Remove-Item C:\Windows\Web\Wallpaper\Windows\img19.jpg -Force
Copy-Item $PSScriptRoot\<YourDarkThemeImage.png> C:\Windows\Web\Wallpaper\Windows\img19.jpg

#Create a dummy Intune detection
$RegistryPath = "HKLM:\SOFTWARE\WallpaperDetection"
New-Item -Path $RegistryPath -Force
New-ItemProperty -Path $RegistryPath -Name "WallpaperSet" -PropertyType DWORD -Value "1" -Force
