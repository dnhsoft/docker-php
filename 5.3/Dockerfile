FROM debian:6

RUN echo "deb http://packages.dotdeb.org squeeze all" >>  /etc/apt/sources.list
RUN echo "deb-src http://packages.dotdeb.org squeeze all" >>  /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
	wget


RUN wget http://www.dotdeb.org/dotdeb.gpg
RUN apt-key add dotdeb.gpg 


RUN apt-get update && apt-get install -y \
	supervisor \
	apache2 \
	php5 \
	libapache2-mod-php5 \
	php5-mysql \
	php5-curl \
	php5-gd \
	php5-idn \
	php-pear \
	php5-imap \
	php5-mcrypt \
	php5-memcache \
	php5-mhash \
	php5-ming \
	php5-ps \
	php5-pspell \
	php5-recode \
	php5-snmp \
	php5-sqlite \
	php5-tidy \
	php5-xmlrpc \
	php5-xsl \
	php5-json

EXPOSE 80

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord"]
