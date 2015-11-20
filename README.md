# Docker Container with Ckan Configuration of Solr

This docker container contains everything you need to start CKAN.

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
