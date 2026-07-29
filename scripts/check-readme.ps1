$ErrorActionPreference = 'Stop'

$readme = Join-Path $PSScriptRoot '..\README.md'
$content = Get-Content -Raw -Encoding UTF8 $readme

if ($content -match '<!-- SESSION_LOG_(?:START|END) -->' -or $content -match '(?m)^## Recent build sessions\s*$') {
    throw 'README contains a session log.'
}

if ($content -match '[\uD800-\uDBFF][\uDC00-\uDFFF]' -or $content -match '[\u2600-\u27BF]') {
    throw 'README contains emoji or pictographic symbols.'
}

if ($content.Contains([char]0xFFFD)) {
    throw 'README contains the Unicode replacement character, indicating corrupted text.'
}

$mojibakePatterns = @(
    "$([char]0x00C2)[^\x00-\x7F]" # Common UTF-8-as-Windows-1252 two-byte prefix
    "$([char]0x00C3)[^\x00-\x7F]" # Common UTF-8-as-Windows-1252 two-byte prefix
    [regex]::Escape((([string][char]0x00E2) + [char]0x20AC)) # Misdecoded curly quotes, dashes, or ellipses
    [regex]::Escape((([string][char]0x00F0) + [char]0x0178)) # Misdecoded emoji
    [regex]::Escape((([string][char]0x00EF) + [char]0x00BB + [char]0x00BF)) # Misdecoded UTF-8 BOM
)

foreach ($pattern in $mojibakePatterns) {
    if ($content -match $pattern) {
        throw 'README contains text that appears to be mojibake.'
    }
}

Write-Output 'README checks passed.'
