* Download example data.

    ```
    wget https://raw.githubusercontent.com/elastic/elasticsearch/master/docs/src/test/resources/accounts.json
    ```{{execute}}

* View the downloaded data.
    ```
    head accounts.json
    ```{{execute}}

* Index the downloaded data into elasticsearch.
    ```
    curl -XPOST -H "Content-Type: application/json" localhost:9200/accounts/_bulk?pretty --data-binary "@accounts.json"
    ```{{execute}}

---

1. Creating an index patterns.
2. Searching the data.
3. Visualizing the data.
