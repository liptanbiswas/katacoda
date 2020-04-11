By this time your elasticsearch instance should be up and running. Check if you are getting some response. You if see some error, wait for few minutes for elasticsearch to start.

```
curl -XGET localhost:9200
```{{execute}}

You can check the health of the elasticsearch cluster by running.


```
curl localhost:9200/_cluster/health?pretty
```{{execute}}
