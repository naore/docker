FROM multiarch/alpine:arm64-latest-stable

ENV VERSION="v0.34.2-sakura-2" \
    TOKEN="abc" \
    TUNNELID="tunnelid"
    
ADD https://getfrp.sh/d/frpc_linux_arm64 /frpc_linux_arm64

RUN chmod +x frpc_linux_arm64 

ENTRYPOINT [ "/frpc_linux_arm64" ]

CMD [ "--help" ]
