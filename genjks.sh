#!/bin/bash

   keytool -genkeypair \
   -alias solr-ssl \
   -keyalg RSA \
   -keysize 2048 \
   -keypass ${SOLR_KEY_STORE_PASSWORD} \
   -storepass ${SOLR_TRUST_PASSWORD} \
   -validity 9999 \
   -keystore solr-ssl.keystore.jks \
   -ext SAN=DNS:localhost,IP:192.168.1.3,IP:127.0.0.1 \
   -dname "CN=localhost, OU=Organizational Unit, O=Organization, L=Location, ST=State, C=Country" && \
   ls server && \
   mv solr-ssl.keystore.jks server/ssl/solr-ssl.keystore.jks
