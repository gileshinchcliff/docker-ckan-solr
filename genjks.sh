#!/bin/bash

FILE=${JKS_FILE:-/opt/solr/server/ssl/solr-ssl.keystore.jks}

if $TLS #check if tls flag is set.
then
  mv bin/solr.in.sh bin/solr.in.sh.bak && mv bin/solr.in.sh.ssl bin/solr.in.sh
  if [ -f $FILE ];
  then
    echo "file is already mounted"
  else
    echo "creating self-signed .jks file"
     keytool -genkeypair \
     -alias solr-ssl \
     -keyalg RSA \
     -keysize 2048 \
     -keypass ${SOLR_KEY_STORE_PASSWORD:-secret} \
     -storepass ${SOLR_TRUST_PASSWORD:-secret} \
     -validity 9999 \
     -keystore solr-ssl.keystore.jks \
     -ext SAN=DNS:localhost,IP:192.168.1.3,IP:127.0.0.1 \
     -dname "CN=localhost, OU=Organizational Unit, O=Organization, L=Location, ST=State, C=Country"

     mv solr-ssl.keystore.jks ${SSL_PATH:-server/ssl/solr-ssl.keystore.jks}
     echo "Successfully created self-signed .jks and moved here ${SSL_PATH:-/opt/solr/server/ssl/}"
   fi
else
  echo "skipping certificate creation"
fi
