# Docker Container with Ckan Configuration of Solr

[![Docker Repository on Quay](https://quay.io/repository/ukhomeofficedigital/ckan-solr/status "Docker Repository on Quay")](https://quay.io/repository/ukhomeofficedigital/ckan-solr) [![Build Status](https://travis-ci.org/UKHomeOffice/docker-ckan-solr.svg)](https://travis-ci.org/UKHomeOffice/docker-ckan-solr) [![GitHub version](https://badge.fury.io/gh/UKHomeOffice%2Fdocker-ckan-solr.svg)](https://badge.fury.io/gh/UKHomeOffice%2Fdocker-ckan-solr) 

This docker container CKAN configuration of Solr.

## Running

See the [docker-solr](https://github.com/UKHomeOffice/docker-solr) repo for full details.

To run a single Solr server:

```bash
docker run --name ckan-solr -d -p 8983:8983 -t quay.io/ukhomeofficedigital/ckan-solr:$CONTAINER_VERSION
```

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details

## License

This repository is licensed under the GPL v2 License. See [LICENSE.md](LICENSE.md) for full details.
