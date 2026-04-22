@ECHO OFF & color 0a

git config http.proxy  http://127.0.0.1:6600
git config https.proxy http://127.0.0.1:6600

echo 【%date% %time%】 代理设置成功 ..

PAUSE
