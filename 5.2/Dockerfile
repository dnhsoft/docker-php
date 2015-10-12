FROM debian:6

RUN echo "deb http://archive.debian.org/debian lenny main contrib non-free" >>  /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
	wget

RUN wget http://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg 


COPY lenny.conf /etc/apt/preferences.d/lenny
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN apt-get update && apt-get install -y \
	supervisor \
	apache2 \
	mysql-client \
	libapache2-mod-php5 \
	php5-common \ 
	php5-curl \
	php5-gd \
	php5-mcrypt \
	php5-mysql \
	php5-cli \
	php5-mhash \
	php5-xsl \
	php5-imap \
	php5-xmlrpc \
	php5-sqlite \
	php5-json


EXPOSE 80


CMD ["/usr/bin/supervisord"]
