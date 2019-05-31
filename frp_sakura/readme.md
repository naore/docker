## 仅适用Linux x64系统

## 容器内部运行参数，大写字母为环境变量
sakura --su=USERNAME --sp=PASSWD --sid=SID --disable-pause

For stable version, run "docker run --restart always -p 22222:22 -e ROOT_PASSWORD:22222", then connect in docker and run /root/sakura.
