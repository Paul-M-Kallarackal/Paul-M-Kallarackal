$readmePath = Join-Path $PSScriptRoot '..\README.md'
$readme = Get-Content -Raw -LiteralPath $readmePath

foreach ($marker in @('<!-- SESSION_LOG_START -->', '<!-- SESSION_LOG_END -->')) {
    if (-not $readme.Contains($marker)) {
        throw "Missing required marker: $marker"
    }
}

if ($readme -match '[^\x00-\x7F]') {
    throw 'README contains non-ASCII text. Remove emoji or malformed encoding.'
}

Write-Host 'README validation passed.'
