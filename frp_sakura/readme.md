## 仅适用Linux x86_64或arm架构系统

## 容器内部运行参数，大写字母为环境变量
/sakura -t $TOKEN -s $SID


## 以下为可选参数
Available Commands:
  help        Help about any command
  http        Run frpc with a single http proxy
  https       Run frpc with a single https proxy
  reload      Hot-Reload frpc configuration
  status      Overview of all proxies status
  stcp        Run frpc with a single stcp proxy
  tcp         Run frpc with a single tcp proxy
  udp         Run frpc with a single udp proxy
  xtcp        Run frpc with a single xtcp proxy

Flags:
  -c, --config string      config file of frpc (default "./frpc.ini")
  -h, --help               help for frpc
  -p, --proxyname string   The names of the proxies that you wish to connect, use comma to split multiple proxies, leave it blank to create all proxies
  -s, --serverid string    The Frp server you wish to connect
  -t, --token string       Access Token on Sakura Frp site
