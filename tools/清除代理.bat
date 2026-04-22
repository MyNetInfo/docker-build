@ECHO OFF & color 0a

git config --unset http.proxy
git config --unset https.proxy

echo 【%date% %time%】 代理清除完毕 ..

PAUSE
