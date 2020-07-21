## 仅适用Linux x86_64或arm64架构系统

For x86_64, simply run 

`docker run -d --name sakura_frp -e TOKEN=<your_token> -e TUNNELID=<your_selected_TUNNELID> --restart=unless-stopped naore/sakura_frp -f $TOKEN:$TUNNELID `

For arm, simply run

`docker run -d --name sakura_frp -e TOKEN=<your_token> -e TUNNELID=<your_selected_TUNNELID> --restart=unless-stopped naore/sakura_frp:arm -f $TOKEN:$TUNNELID `

以上只能连接一条隧道，如需一次连接多条隧道，需要用配置文件，运行命令改为

`docker run -d --name sakura_frp -v $PWD/frp.ini:/frp.ini --restart=unless-stopped naore/sakura_frp -c /frp.ini '

## 容器内部运行参数，大写字母为环境变量

/sakura -f $TOKEN:$TUNNELID


## 以下为可选参数

Available Commands:

  help        Help about any command
  
  http        Run frpc with a single http proxy
  
  https       Run frpc with a single https proxy
  
  reload      Hot-Reload frpc configuration
  
  status      Overview of all proxies status
  
  stcp        Run frpc with a single stcp proxy
  
  sudp        Run frpc with a single sudp proxy
  
  tcp         Run frpc with a single tcp proxy
  
  tcpmux      Run frpc with a single tcpmux proxy
  
  udp         Run frpc with a single udp proxy
  
  xtcp        Run frpc with a single xtcp proxy

Flags:

  -c, --config string         config file of frpc (default "./frpc.ini")
  
  -f, --fetch_config string   fetch natfrp config by <token>:<tunnel id>
  
  -h, --help                  help for frpc
  
  -v, --version               version of frpc
