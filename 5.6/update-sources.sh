#!/bin/bash

THIS_DIR=$(dirname "$(readlink -f "$0")")""

rm -rf $THIS_DIR/apache

cd $THIS_DIR/../../php-official/5.6

git pull origin master

cp -R ./apache  $THIS_DIR

cd $THIS_DIR

echo "Adding ftp and zip modules..."
sed -i "s/--with-openssl/--with-openssl --enable-opcache --enable-ftp --enable-zip/g" ./apache/Dockerfile
