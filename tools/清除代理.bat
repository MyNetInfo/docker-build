@ECHO OFF & color 0a

git config --unset http.proxy
git config --unset https.proxy

git config --global --unset http.proxy
git config --global --unset https.proxy

echo 【%date% %time%】 代理清除完毕 ..

PAUSE
