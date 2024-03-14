$TeamsAppPresence = Get-AppxPackage "MSTeams" -AllUsers -ErrorAction SilentlyContinue
if ($True -eq $TeamsAppPresence) {
Write-Host "Teams found" -ForegroundColor Green
Exit 0
} else {
Write-Host "Teams NOT found" -ForegroundColor Red
Exit 1
}
