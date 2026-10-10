@echo off
:: Administrator huquqini olish
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Administrator huquqlari so'ralmoqda...
    powershell -Command "Start-Process '%~0' -Verb RunAs"
    exit /b
)

set "HOSTS=%windir%\System32\drivers\etc\hosts"

echo Hosts fayli yangilanmoqda...

:: Bloklanadigan saytlar ro'yxati
(
echo.
echo # === BLOCK_START ===
echo 127.0.0.1 google.com
echo 127.0.0.1 www.google.com
echo 127.0.0.1 duckduckgo.com
echo 127.0.0.1 www.duckduckgo.com
echo 127.0.0.1 yandex.ru
echo 127.0.0.1 www.yandex.ru
echo 127.0.0.1 yandex.com
echo 127.0.0.1 www.yandex.com
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
echo 127.0.0.1 together.ai
echo 127.0.0.1 fireworks.ai
echo 127.0.0.1 fal.ai
echo 127.0.0.1 runwayml.com
echo 127.0.0.1 pika.art
echo 127.0.0.1 luma.ai
echo 127.0.0.1 klingai.com
echo 127.0.0.1 heygen.com
echo 127.0.0.1 synthesia.io
echo 127.0.0.1 elevenlabs.io
echo 127.0.0.1 suno.com
echo 127.0.0.1 udio.com
echo 127.0.0.1 ideogram.ai
echo 127.0.0.1 midjourney.com
echo 127.0.0.1 leonardo.ai
echo 127.0.0.1 krea.ai
echo 127.0.0.1 playground.com
echo 127.0.0.1 stability.ai
echo 127.0.0.1 clipdrop.co
echo 127.0.0.1 remove.bg
echo 127.0.0.1 canva.com
echo 127.0.0.1 www.canva.com
echo 127.0.0.1 adobe.com
echo 127.0.0.1 descript.com
echo 127.0.0.1 otter.ai
echo 127.0.0.1 fireflies.ai
echo 127.0.0.1 tldv.io
echo 127.0.0.1 grammarly.com
echo 127.0.0.1 quillbot.com
echo 127.0.0.1 jasper.ai
echo 127.0.0.1 copy.ai
echo 127.0.0.1 writesonic.com
echo 127.0.0.1 rytr.me
echo 127.0.0.1 sudowrite.com
echo 127.0.0.1 cursor.com
echo 127.0.0.1 windsurf.com
echo 127.0.0.1 replit.com
echo 127.0.0.1 lovable.dev
echo 127.0.0.1 bolt.new
echo 127.0.0.1 v0.dev
echo 127.0.0.1 tabnine.com
echo 127.0.0.1 blackbox.ai
echo 127.0.0.1 devin.ai
echo 127.0.0.1 sourcegraph.com
echo 127.0.0.1 ai21.com
echo 127.0.0.1 cohere.com
echo 127.0.0.1 mistral.ai
echo 127.0.0.1 ollama.com
echo 127.0.0.1 lmstudio.ai
echo 127.0.0.1 langchain.com
echo 127.0.0.1 langflow.org
echo 127.0.0.1 n8n.io
echo 127.0.0.1 zapier.com
echo 127.0.0.1 make.com
echo 127.0.0.1 notion.so
echo 127.0.0.1 www.notion.so
echo 127.0.0.1 gamma.app
echo 127.0.0.1 tome.app
echo 127.0.0.1 beautiful.ai
echo 127.0.0.1 napkin.ai
echo 127.0.0.1 scispace.com
echo 127.0.0.1 consensus.app
echo 127.0.0.1 elicit.com
echo 127.0.0.1 semantic-scholar.org
echo 127.0.0.1 wolframalpha.com
echo 127.0.0.1 deepl.com
echo 127.0.0.1 wordtune.com
echo 127.0.0.1 speechify.com
echo 127.0.0.1 murf.ai
echo 127.0.0.1 invideo.io
echo 127.0.0.1 veed.io
echo 127.0.0.1 kapwing.com
echo 127.0.0.1 opus.pro
echo 127.0.0.1 vidnoz.com
echo 127.0.0.1 futurepedia.io
echo 127.0.0.1 toolify.ai
echo 127.0.0.1 futuretools.io
echo 127.0.0.1 topai.tools
echo 127.0.0.1 aitools.fyi
echo 127.0.0.1 easywithai.com
echo 127.0.0.1 aichief.com
echo 127.0.0.1 aipure.ai
echo # === BLOCK_END ===
) >> "%HOSTS%"

echo DNS keshini clearing...
ipconfig /flushdns >nul 2>&1

echo.
echo Barcha saytlar muvaffaqiyatli bloklandi!
pause
