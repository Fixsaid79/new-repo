@echo off
:: Administrator huquqini olish
net session >nul 2>&1
if %errorLevel% neq 0 (
echo Administrator huquqlari so'ralmoqda...
powershell -Command "Start-Process '%~0' -Verb RunAs"
exit /b
)

set "HOSTS=%windir%\System32\drivers\etc\hosts"

echo Hosts fayliga bloklash kiritilmoqda...

(
echo.
echo # === BLOCK_START ===

--- QIDIRUV VA AI CHATBOTLAR ---

echo 127.0.0.1 google.com
echo 127.0.0.1 www.google.com
echo 127.0.0.1 duckduckgo.com
echo 127.0.0.1 www.duckduckgo.com
echo 127.0.0.1 duck.ai
echo 127.0.0.1 www.duck.ai
echo 127.0.0.1 kimi.ai
echo 127.0.0.1 www.kimi.ai
echo 127.0.0.1 kimi.moonshot.cn
echo 127.0.0.1 moonshot.cn
echo 127.0.0.1 yandex.ru
echo 127.0.0.1 www.yandex.ru
echo 127.0.0.1 yandex.com
echo 127.0.0.1 www.yandex.com

--- AI VA BOSHQA XIZMATLAR ---

echo 127.0.0.1 chatgpt.com
echo 127.0.0.1 www.chatgpt.com
echo 127.0.0.1 openai.com
echo 127.0.0.1 www.openai.com
echo 127.0.0.1 claude.ai
echo 127.0.0.1 www.claude.ai
echo 127.0.0.1 anthropic.com
echo 127.0.0.1 gemini.google.com
echo 127.0.0.1 perplexity.ai
echo 127.0.0.1 www.perplexity.ai
echo 127.0.0.1 copilot.microsoft.com
echo 127.0.0.1 poe.com
echo 127.0.0.1 you.com
echo 127.0.0.1 phind.com
echo 127.0.0.1 deepseek.com
echo 127.0.0.1 grok.com
echo 127.0.0.1 character.ai
echo 127.0.0.1 pi.ai
echo 127.0.0.1 meta.ai
echo 127.0.0.1 huggingface.co
echo 127.0.0.1 replicate.com
echo 127.0.0.1 cursor.com
echo 127.0.0.1 windsurf.com
echo 127.0.0.1 replit.com
echo 127.0.0.1 v0.dev
echo 127.0.0.1 blackbox.ai
echo 127.0.0.1 devin.ai
echo 127.0.0.1 deepl.com

--- O'YIN SAYTLARI (KAHOOT, BLOOKET, MONKEYTYPE QOLDIRILDI) ---

echo 127.0.0.1 roblox.com
echo 127.0.0.1 www.roblox.com
echo 127.0.0.1 poki.com
echo 127.0.0.1 www.poki.com
echo 127.0.0.1 crazygames.com
echo 127.0.0.1 www.crazygames.com
echo 127.0.0.1 y8.com
echo 127.0.0.1 www.y8.com
echo 127.0.0.1 krunker.io
echo 127.0.0.1 www.krunker.io
echo 127.0.0.1 agar.io
echo 127.0.0.1 www.agar.io
echo 127.0.0.1 slither.io
echo 127.0.0.1 www.slither.io
echo 127.0.0.1 paper.io
echo 127.0.0.1 www.paper.io
echo 127.0.0.1 twitch.tv
echo 127.0.0.1 www.twitch.tv
echo 127.0.0.1 poki.ru
echo 127.0.0.1 armorgames.com
echo 127.0.0.1 kongregate.com
echo # === BLOCK_END ===
) >> "%HOSTS%"

echo.
echo DNS keshini tozalamoqda...
ipconfig /flushdns >nul 2>&1

echo.
echo Barcha so'ralgan AI va O'yin saytlari bloklandi!
echo Kahoot, Blooket va Monkeytype bloklanmadi.
pause
