FROM multichainblockchainwuc_ubuntu:latest
MAINTAINER Venkata Ravuri (venkata.ravuri@gmail.com)

RUN apt-get install -y curl

# supervisor installation &&
# create directory for child images to store configuration in
RUN apt-get -y install supervisor \
  && mkdir -p /var/log/supervisor \
  && mkdir -p /etc/supervisor/conf.d

# supervisor base configuration
ADD supervisor.conf /etc/supervisor.conf

RUN cd /tmp \
	&& wget http://www.multichain.com/download/multichain-1.0-alpha-28.tar.gz \
	&& tar -xvzf multichain-1.0-alpha-28.tar.gz \
	&& cd multichain-1.0-alpha-28 \
	&& mv multichaind multichain-cli multichain-util /usr/bin/ \
	&& cd .. \
	&& rm -Rf multichain-1.0-alpha-28 \
	&& rm multichain-1.0-alpha-28.tar.gz
		
CMD ["/bin/bash"]