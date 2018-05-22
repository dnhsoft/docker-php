#!/bin/bash

INI_DIR="/usr/local/etc/php/conf.d"



DNH_INI_FILE="$INI_DIR/dnh-custom.ini"

rm -f $DNH_INI_FILE

echo "upload_max_filesize=$PHP_UPLOAD_MAX_FILESIZE" >> $DNH_INI_FILE
echo "post_max_size=$PHP_POST_MAX_FILESIZE" >> $DNH_INI_FILE
echo "memory_limit=$PHP_MEMORY_LIMIT" >> $DNH_INI_FILE
echo "max_execution_time=$PHP_MAX_EXECUTION_TIME" >> $DNH_INI_FILE
echo "session.cookie_secure=$PHP_SESSION_COOKIE_SECURE" >> $DNH_INI_FILE



OPCACHE_INI_FILE="$INI_DIR/opcache-custom.ini"

rm -f $OPCACHE_INI_FILE

if [ "$PHP_OPCACHE_ENABLE" == "1" ]; then
  echo "zend_extension=opcache.so" >> $OPCACHE_INI_FILE
  echo "opcache.enable=1" >> $OPCACHE_INI_FILE
  echo "opcache.memory_consumption=$PHP_OPCACHE_MEMORY_CONSUMPTION" >> $OPCACHE_INI_FILE
  echo "opcache.interned_strings_buffer=$PHP_OPCACHE_INTERNED_STRINGS_BUFFER" >> $OPCACHE_INI_FILE
  echo "opcache.max_accelerated_files=$PHP_OPCACHE_ACCELERATED_FILES" >> $OPCACHE_INI_FILE
  echo "opcache.revalidate_freq=$PHP_OPCACHE_REVALIDATE_FREQ" >> $OPCACHE_INI_FILE
  echo "opcache.fast_shutdown=$PHP_OPCACHE_FAST_SHUTDOWN" >> $OPCACHE_INI_FILE
fi


APC_INI_FILE="$INI_DIR/apcu.ini"

rm -f $APC_INI_FILE

if [ $PHP_APCU_ENABLE == '1' ]; then
  echo 'extension=apcu.so' > $APC_INI_FILE
fi
