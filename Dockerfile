FROM pritunl-client

#=======================================
# Squid Proxy Server
#=======================================
RUN yum install -y squid \
    && mv -f /etc/squid/squid.conf /etc/squid/squid.conf.original \
    && yum clean all
    
ADD squid/ /etc/squid/

EXPOSE 3128

RUN chmod +x /etc/squid/squid-*.sh \
    && mkdir -p /etc/service/squid \
    && ln -s /etc/squid/squid-run.sh /etc/service/squid/run \
    && ln -s /etc/squid/squid-finish.sh /etc/service/squid/finish

COPY ./run-vpn-proxy.sh ./
#ENTRYPOINT ["./run-vpn-proxy.sh"]
ENTRYPOINT [ ]
CMD ./run-vpn-proxy.sh $PRITUNL_PROFILE