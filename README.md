# Docker Container with Ckan Configuration of Solr

[![Docker Repository on Quay](https://quay.io/repository/ukhomeofficedigital/ckan-solr/status "Docker Repository on Quay")](https://quay.io/repository/ukhomeofficedigital/ckan-solr) [![Build Status](https://travis-ci.org/UKHomeOffice/docker-ckan-solr.svg)](https://travis-ci.org/UKHomeOffice/docker-ckan-solr) [![GitHub version](https://badge.fury.io/gh/UKHomeOffice%2Fdocker-ckan-solr.svg)](https://badge.fury.io/gh/UKHomeOffice%2Fdocker-ckan-solr)

This docker container CKAN configuration of Solr.

## Running

See the [docker-solr](https://github.com/UKHomeOffice/docker-solr) repo for full details.

To run a single Solr server:

```bash
docker run --name ckan-solr -d -p 8983:8983 -t quay.io/ukhomeofficedigital/ckan-solr:$CONTAINER_VERSION
```

### Running with tls.

By default solr won't run with TLS however adding the `TLS=TRUE` flag will enable it. By default it will create self-signed certificates.
However if you'd like to implement your own jks then just mount it here at `/opt/solr/server/ssl/solr-ssl.keystore.jks`

### Environment Variables

* `TLS` - Whether or not to configure with tls. (defaults to false.)

* `JKS_FILE` - The full path to the .jks file, (defaults to `/opt/solr/server/ssl/solr-ssl.keystore.jks`)

* `SOLR_KEY_STORE_PASSWORD` - Password for the keystore. (defaults to `secret`)

* `SOLR_TRUST_PASSWORD` - Password for the trust store. (defaults to `secret`)

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details

## License

This repository is licensed under the GPL v2 License. See [LICENSE.md](LICENSE.md) for full details.
