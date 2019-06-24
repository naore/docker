## 仅适用Linux x86_64或arm架构系统

## 容器内部运行参数，大写字母为环境变量
/sakura --su=$USERNAME --sp=$PASSWD --sid=$SID --disable-pause

要指定转发端口，在SID后加"/端口"即可，如
--sid=10/123,234
