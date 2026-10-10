@echo off
setlocal DisableDelayedExpansion

:: 1. Joriy papkani fayl joylashgan joyga o'tkazish
cd /d "%~dp0"

:: 2. Administrator huquqini tekshirish va so'rash (xatosiz va xavfsiz usul)
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo Administrator huquqlari so'ralmoqda...
    powershell -NoProfile -ExecutionPolicy Bypass -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

set "HOSTS=%windir%\System32\drivers\etc\hosts"

echo [1/3] Hosts fayli tozalanmoqda va yangilanmoqda...

:: Hosts faylini o'qishdan ro'yxatdan o'tkazish
attrib -r -s -h "%HOSTS%" >nul 2>&1

:: Blok qismini qo'shish
(
echo.
echo # === BLOCK_START ===
echo 127.0.0.1 kimi.ai
echo 127.0.0.1 www.kimi.ai
echo 127.0.0.1 kimi.moonshot.cn
echo 127.0.0.1 duck.ai
echo 127.0.0.1 www.duck.ai
echo 127.0.0.1 duckduckgo.com
echo 127.0.0.1 www.duckduckgo.com
echo 127.0.0.1 google.com
echo 127.0.0.1 www.google.com
echo 127.0.0.1 chatgpt.com
echo 127.0.0.1 www.chatgpt.com
echo 127.0.0.1 openai.com
echo 127.0.0.1 claude.ai
echo 127.0.0.1 gemini.google.com
echo 127.0.0.1 deepseek.com
echo 127.0.0.1 roblox.com
echo 127.0.0.1 www.roblox.com
echo 127.0.0.1 poki.com
echo 127.0.0.1 www.poki.com
echo 127.0.0.1 crazygames.com
echo 127.0.0.1 www.crazygames.com
echo # === BLOCK_END ===
) >> "%HOSTS%"

echo [2/3] DNS kesh belgilanmoqda va tozalanmoqda...
ipconfig /flushdns >nul 2>&1

echo [3/3] Barcha jarayonlar bajarildi!
echo.
echo Diqqat: Kahoot, Blooket va Monkeytype ochiq qoldirildi.
echo.
pause
