$BackgroundImageURL = 'https://YourWebsite.example/Wallpaper.jpg'
Start-BitsTransfer -Source $BackgroundImageURL -Destination C:\ProgramData\Wallpaper.jpg

#Take ownership of default wallpapers so the SYSTEM can manipulate with them
#Light theme
& takeown /f C:\Windows\Web\Wallpaper\Windows\img0.jpg
& icacls C:\Windows\Web\Wallpaper\Windows\img0.jpg /Grant 'System:(F)'
#Dark theme
& takeown /f C:\Windows\Web\Wallpaper\Windows\img19.jpg
& icacls C:\Windows\Web\Wallpaper\Windows\img19.jpg /Grant 'System:(F)'

#Replace default wallpaper files with downloaded ones
#Light theme
Remove-Item C:\Windows\Web\Wallpaper\Windows\img0.jpg -Force
Copy-Item -Path "C:\ProgramData\Wallpaper.jpg" -Destination "C:\Windows\Web\Wallpaper\Windows\img0.jpg" -Force
#Dark theme
Remove-Item C:\Windows\Web\Wallpaper\Windows\img19.jpg -Force
Copy-Item -Path "C:\ProgramData\Wallpaper.jpg" -Destination "C:\Windows\Web\Wallpaper\Windows\img19.jpg" -Force

#Wallpaper temp file cleanup
Remove-Item -Path "C:\ProgramData\Wallpaper.jpg" -Force
