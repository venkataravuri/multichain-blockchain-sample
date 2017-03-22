FROM multichainblockchainwuc_multichain-base:latest
MAINTAINER Venkata Ravuri (venkata.ravuri@gmail.com)

RUN apt-get install -y curl

RUN mkdir -p /multichain-data/blockchain-wuc
COPY multichain.conf /multichain-data/blockchain-wuc/


COPY india-secondary-node-supervisor.conf /etc/supervisor/conf.d/
COPY *.sh /tmp/
RUN dos2unix /tmp/*.sh

EXPOSE 8447
EXPOSE 8000

# default command
CMD ["supervisord", "-c", "/etc/supervisor.conf"]
