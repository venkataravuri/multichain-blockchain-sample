FROM multichainblockchainwuc_multichain-base:latest
MAINTAINER Venkata Ravuri (venkata.ravuri@gmail.com)

COPY setup-blockchain-wuc.sh /tmp
COPY params.dat /tmp
COPY multichain.conf /tmp

RUN mkdir -p /multichain-data

RUN dos2unix /tmp/setup-blockchain-wuc.sh
RUN ["/bin/bash", "-c", "./tmp/setup-blockchain-wuc.sh"]

EXPOSE 7447
EXPOSE 7000

CMD ["multichaind", "blockchain-wuc", "-datadir=/multichain-data", "-shrinkdebugfilesize", "-printtoconsole"]