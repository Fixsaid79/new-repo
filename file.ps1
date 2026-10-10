# Agar administrator bo'lmasa, administrator sifatida qayta ishga tushirish
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -Command `"& {([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)}`"" -Verb RunAs
    # Yuqoridagidan qat'i nazar to'g'ridan to'g'ri hosts ni yozamiz:
}

$hostsPath = "$env:windir\System32\drivers\etc\hosts"
$hostsContent = Get-Content $hostsPath -ErrorAction SilentlyContinue
$newContent = @()
$skip = $false
foreach ($line in $hostsContent) {
    if ($line -like "*# === BLOCK_START ===*") { $skip = $true }
    if (!$skip) { $newContent += $line }
    if ($line -like "*# === BLOCK_END ===*") { $skip = $false }
}

$blockSection = @(
    "",
    "# === BLOCK_START ===",
    "127.0.0.1 google.com", "127.0.0.1 www.google.com",
    "127.0.0.1 duckduckgo.com", "127.0.0.1 www.duckduckgo.com",
    "127.0.0.1 yandex.ru", "127.0.0.1 www.yandex.ru",
    "127.0.0.1 yandex.com", "127.0.0.1 www.yandex.com",
    "127.0.0.1 chatgpt.com", "127.0.0.1 www.chatgpt.com",
    "127.0.0.1 openai.com", "127.0.0.1 www.openai.com",
    "127.0.0.1 claude.ai", "127.0.0.1 www.claude.ai",
    "127.0.0.1 gemini.google.com", "127.0.0.1 perplexity.ai",
    "127.0.0.1 youtube.com", "127.0.0.1 www.youtube.com", "127.0.0.1 youtu.be",
    "127.0.0.1 facebook.com", "127.0.0.1 instagram.com", "127.0.0.1 tiktok.com",
    "127.0.0.1 roblox.com", "127.0.0.1 minecraft.net", "127.0.0.1 poki.com", "127.0.0.1 crazygames.com",
    "# === BLOCK_END ==="
)

try {
    $newContent + $blockSection | Set-Content $hostsPath -Force
    ipconfig /flushdns
    Write-Host "`n[MUVAFFAQIYAT] Barcha tanlangan saytlar bloklandi!" -ForegroundColor Green
} catch {
    Write-Host "`n[XATOLIK] Administrator huquqi yetishmadi yoki hosts fayl band!" -ForegroundColor Red
}

# Oyna darhol yopilib qolmasligi uchun javob kutish
Write-Host "`nChiqish uchun istalgan tugmani bosing..."
$null =$Host.UI.ReadLine()