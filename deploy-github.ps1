# Deploy king403resmi.github.io ke GitHub via API (tanpa SSH)
# Usage: .\deploy-github.ps1 -Token "ghp_xxxx"
param(
    [Parameter(Mandatory = $false)]
    [string]$Token = $env:GITHUB_TOKEN
)

$ErrorActionPreference = "Stop"
$Owner = "King403resmi"
$Repo = "king403resmi.github.io"
$Branch = "main"
$Root = $PSScriptRoot

if (-not $Token) {
    Write-Host "ERROR: Token GitHub diperlukan." -ForegroundColor Red
    Write-Host "Buat PAT di: https://github.com/settings/tokens (scope: repo)"
    Write-Host "Jalankan: .\deploy-github.ps1 -Token 'ghp_...'"
    exit 1
}

$headers = @{
    Authorization = "Bearer $Token"
    Accept        = "application/vnd.github+json"
    "X-GitHub-Api-Version" = "2022-11-28"
}

function Get-FileSha($path) {
    $uri = "https://api.github.com/repos/$Owner/$Repo/contents/$path?ref=$Branch"
    try {
        $r = Invoke-RestMethod -Uri $uri -Headers $headers -Method Get
        return $r.sha
    } catch {
        return $null
    }
}

function Upload-File($localPath, $remotePath) {
    $bytes = [System.IO.File]::ReadAllBytes($localPath)
    $b64 = [Convert]::ToBase64String($bytes)
    $sha = Get-FileSha $remotePath
    $body = @{
        message = "Update $remotePath"
        content = $b64
        branch  = $Branch
    }
    if ($sha) { $body.sha = $sha }
    $uri = "https://api.github.com/repos/$Owner/$Repo/contents/$remotePath"
    $json = $body | ConvertTo-Json
    Invoke-RestMethod -Uri $uri -Headers $headers -Method Put -Body $json -ContentType "application/json" | Out-Null
    Write-Host "OK $remotePath"
}

# Cek akses repo
try {
    Invoke-RestMethod -Uri "https://api.github.com/repos/$Owner/$Repo" -Headers $headers | Out-Null
} catch {
    Write-Host "ERROR: Token tidak valid atau tidak punya akses ke repo." -ForegroundColor Red
    exit 1
}

$files = Get-ChildItem -Path $Root -Recurse -File | Where-Object {
    $_.FullName -notmatch '\\\.git\\' -and $_.Name -ne 'deploy-github.ps1'
}

foreach ($f in $files) {
    $rel = $f.FullName.Substring($Root.Length + 1).Replace('\', '/')
    Upload-File $f.FullName $rel
}

Write-Host ""
Write-Host "Deploy selesai! Aktifkan GitHub Pages:" -ForegroundColor Green
Write-Host "https://github.com/$Owner/$Repo/settings/pages -> branch main, folder /"
Write-Host "Live: https://$Owner.github.io/"
