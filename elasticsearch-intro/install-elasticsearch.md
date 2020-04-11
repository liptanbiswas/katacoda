Easiest way to install elasticsearch is to just run the docker container with latest elasticsearch image.

```
docker run -d -p 9200:9200 -p 9300:9300 --name elasticsearch \
-e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.6.2
```{{execute}}

This single node installation is not suitable for production use. To learn more about the configurable options, see [Docker install](https://www.elastic.co/guide/en/elasticsearch/reference/7.6/docker.html).

To learn more about installation in various platforms, read [Installing Elasticsearch](https://www.elastic.co/guide/en/elasticsearch/reference/7.6/install-elasticsearch.html#install-elasticsearch).
