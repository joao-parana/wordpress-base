FROM php:5.6-apache

RUN a2enmod rewrite

# install the PHP extensions we need
RUN apt-get update && apt-get install -y libpng12-dev libjpeg-dev && rm -rf /var/lib/apt/lists/* \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd

RUN docker-php-ext-install mysqli

ADD wordpress-4.2.2-pt_BR.tar.gz /var/www/html

# Removing /var/www/html/wp-content to use with VOLUME on host computer
RUN rm -rf /var/www/html/wp-content

CMD ["/bin/bash"]

# Nesta imagem temos a seguinte saida do comando find abaixo:
#
# find /usr/src/php/ext -mindepth 2 -maxdepth 2 -type f -name 'config.m4' | cut -d/ -f6 | sort
# 
# bcmath, bz2, calendar, ctype, curl, dba, dom, enchant, exif, fileinfo, 
# filter, ftp, gd, gettext, gmp, hash, iconv, imap, interbase, intl, json, 
# ldap, mbstring, mcrypt, mssql, mysql, mysqli, oci8, odbc, opcache, pcntl, 
# pdo, pdo_dblib, pdo_firebird, pdo_mysql, pdo_oci, pdo_odbc, pdo_pgsql, 
# pdo_sqlite, pgsql, phar, posix, pspell, readline, recode, reflection, 
# session, shmop, simplexml, snmp, soap, sockets, spl, standard, sybase_ct, 
# sysvmsg, sysvsem, sysvshm, tidy, tokenizer, wddx, xml, xmlreader, xmlrpc, 
# xmlwriter, xsl, zip
#