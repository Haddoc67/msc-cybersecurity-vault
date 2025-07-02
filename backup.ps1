# backup.ps1
Set-Location "E:\MSc Cyber Security"

git add .

$datetime = Get-Date -Format "yyyy-MM-dd HH:mm"
$commitMessage = "Backup commit - $datetime"

git commit -m $commitMessage
git push
