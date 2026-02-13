#!/bin/bash

# إنشاء صفحة بسيطة
echo "<h1>Codespace is Live!</h1>" > index.html

# تركيب الرابط العام (Public URL)
PUBLIC_URL="https://${CODESPACE_NAME}-8080.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"

# إرسال الرابط للـ Webhook
curl -X POST -H "Content-Type: application/json" \
     -d "{\"status\": \"active\", \"url\": \"$PUBLIC_URL\"}" \
     https://webhook.site/ffc97016-a837-4a5e-9e04-18f739088042

# تشغيل السيرفر في الخلفية
nohup python3 -m http.server 8080 &
