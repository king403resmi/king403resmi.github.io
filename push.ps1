# Push ke GitHub — pakai path Git penuh (tanpa perlu git di PATH)
param(
    [string]$Token = $env:GITHUB_TOKEN
)

$GitExe = "C:\Program Files\Git\bin\git.exe"
$RepoDir = $PSScriptRoot

if (-not (Test-Path $GitExe)) {
    Write-Host "Git belum terinstall. Install: winget install Git.Git" -ForegroundColor Red
    exit 1
}

Set-Location $RepoDir

if ($Token) {
    & $GitExe remote set-url origin "https://$Token@github.com/King403resmi/king403resmi.github.io.git"
    & $GitExe push origin main
    & $GitExe remote set-url origin "https://github.com/King403resmi/king403resmi.github.io.git"
    exit $LASTEXITCODE
}

# Coba SSH dulu
$env:GIT_SSH_COMMAND = "ssh -i $env:USERPROFILE\.ssh\id_ed25519 -o IdentitiesOnly=yes"
& $GitExe remote set-url origin "git@github.com:King403resmi/king403resmi.github.io.git"
& $GitExe push origin main 2>&1

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Push gagal — SSH belum terdaftar di GitHub." -ForegroundColor Yellow
    Write-Host ""
    Write-Host "OPSI A: Tambah SSH key di https://github.com/settings/keys" -ForegroundColor Cyan
    Get-Content "$env:USERPROFILE\.ssh\id_ed25519.pub"
    Write-Host ""
    Write-Host "Lalu jalankan lagi: .\push.ps1"
    Write-Host ""
    Write-Host "OPSI B: Pakai token:" -ForegroundColor Cyan
    Write-Host '  .\push.ps1 -Token "ghp_TOKEN_ANDA"'
    Write-Host ""
    Write-Host "OPSI C: Upload manual 2 file di GitHub web:" -ForegroundColor Cyan
    Write-Host "  - _config.yml  (theme: minima)"
    Write-Host "  - Gemfile      (gem minima)"
}
