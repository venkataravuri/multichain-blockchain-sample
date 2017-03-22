FROM multichainblockchainwuc_multichain-base:latest
MAINTAINER Venkata Ravuri (venkata.ravuri@gmail.com)

RUN apt-get update -y
RUN apt-get install -y sqlite3 libsqlite3-dev
RUN apt-get install -y python-dev
RUN apt-get install -y python-pip

RUN pip install --upgrade pip
RUN pip install pycrypto

COPY multichain-explorer /multichain-explorer

RUN cd /multichain-explorer \
	&& python setup.py install

RUN mkdir -p /multichain-data/blockchain-wuc
COPY multichain.conf /multichain-data/blockchain-wuc/


COPY multichain-explorer-supervisor.conf /etc/supervisor/conf.d/
COPY *.sh /tmp/
RUN dos2unix /tmp/*.sh

EXPOSE 2750

# default command
CMD ["supervisord", "-c", "/etc/supervisor.conf"]
