param(
    [Parameter(Mandatory = $true)]
    [string]$Date,

    [Parameter(Mandatory = $true)]
    [string]$Summary,

    [string[]]$Links = @()
)

$readmePath = Join-Path $PSScriptRoot '..\README.md'
$readme = Get-Content -Raw -LiteralPath $readmePath
$marker = '<!-- SESSION_LOG_START -->'

if (-not $readme.Contains($marker)) {
    throw "README session marker was not found."
}

$linkText = if ($Links.Count -gt 0) {
    ' Links: ' + (($Links | ForEach-Object { "[$_]($_)" }) -join ', ') + '.'
} else {
    ''
}

$entry = "$marker`r`n### $Date`r`n`r`n- $Summary$linkText`r`n"
$updated = $readme.Replace($marker, $entry)
Set-Content -LiteralPath $readmePath -Value $updated -Encoding utf8

& (Join-Path $PSScriptRoot 'validate-readme.ps1')
