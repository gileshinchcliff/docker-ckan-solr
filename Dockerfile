FROM quay.io/ukhomeofficedigital/solr:v0.2.0

USER root
RUN yum install -y wget && \
    yum clean all
ENV CKAN_VERSION ckan-2.4.1
USER $SOLR_USER

RUN bin/solr start & \
    export SOLR_PID=$! && \
    until wget -qo /dev/null http://localhost:8983 ; do sleep 5 ; done && echo && \
    bin/solr create -c ckan && \
    wget -O /opt/solr/server/solr/ckan/conf/schema.xml \
    https://raw.githubusercontent.com/ckan/ckan/$CKAN_VERSION/ckan/config/solr/schema.xml && \
    rm /opt/solr/server/solr/ckan/conf/managed-schema && \
    wait $SOLR_PID

RUN mkdir server/ssl

RUN rm -rf bin/solr.in.sh
ADD solr.in.sh bin/solr.in.sh
ADD solrconfig.xml /opt/solr/server/solr/ckan/conf/solrconfig.xml
ADD genjks.sh /opt/solr/genjks.sh

CMD ["/opt/solr/genjks.sh && /opt/solr/entrypoint.sh"]
