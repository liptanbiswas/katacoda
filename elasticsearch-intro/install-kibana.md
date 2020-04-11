Run Kibana using Docker.

```
docker run -d --link elasticsearch:elasticsearch -p 5601:5601 --name kibana docker.elastic.co/kibana/kibana:7.6.2
```{{execute}}

After few minutes, you kibana instance will be accessible at https://[[HOST_SUBDOMAIN]]-5601-[[KATACODA_HOST]].environments.katacoda.com
