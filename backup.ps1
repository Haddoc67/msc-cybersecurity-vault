# backup.ps1

Set-Location "E:\MSc Cyber Security"

# Logfilsti
$logFile = "E:\MSc Cyber Security\backup-log.txt"
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Start loglinje
Add-Content $logFile "`n$timestamp - Backup startes"

try {
    git add .

    $commitMessage = "Backup commit - $timestamp"
    git commit -m $commitMessage

    git push

    Add-Content $logFile "$timestamp - Backup lykkedes: $commitMessage"
} catch {
    Add-Content $logFile "$timestamp - FEJL: $_"
}