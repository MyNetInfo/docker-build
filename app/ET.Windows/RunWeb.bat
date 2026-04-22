@ECHO OFF

REM --api-server-port: Web 端口
REM --api-host       : 指定 WebAPI 访问地址(不设就只能在 Web 界面手动指定 API 后端地址)

REM --config-server-port    : 用于 EasytierCore 连接端口
REM --config-server-protocol: 用于 EasytierCore 连接协议(支持 tcp/udp/ws 协议)

REM --no-web         : 不运行web前端(关闭 --api-server-port 前端功能)
REM --web-server-port: 额外监听 web 前端的端口(此设置不受 --no-web 影响)

C:\EasyTierWindows\easytier-web-embed.exe --api-server-port 11211 --api-host "http://127.0.0.1:11211" --config-server-protocol ws --config-server-port 22020

PAUSE
