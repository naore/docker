FROM alpine

ENV VERSION="v0.34.2-sakura-2" \
    TOKEN="abc" \
    TUNNELID="tunnelid"
    
ADD https://getfrp.sh/d/frpc_linux_amd64 /frpc_linux_amd64

RUN chmod +x frpc_linux_amd64 

ENTRYPOINT [ "/frpc_linux_amd64" ]

CMD [ "--help" ]
