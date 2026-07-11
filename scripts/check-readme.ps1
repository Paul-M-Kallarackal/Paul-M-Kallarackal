$ErrorActionPreference = 'Stop'

$readme = Join-Path $PSScriptRoot '..\README.md'
$content = Get-Content -Raw -Encoding UTF8 $readme

if ($content -notmatch '<!-- SESSION_LOG_START -->' -or $content -notmatch '<!-- SESSION_LOG_END -->') {
    throw 'README session log markers are missing.'
}

if ($content -match '[\uD800-\uDBFF][\uDC00-\uDFFF]' -or $content -match '[\u2600-\u27BF]') {
    throw 'README contains emoji or pictographic symbols.'
}

if ($content.Contains([char]0xFFFD)) {
    throw 'README contains the Unicode replacement character, indicating corrupted text.'
}

Write-Output 'README checks passed.'
