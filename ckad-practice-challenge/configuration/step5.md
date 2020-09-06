Complete the following tasks.

---

1. Create a secret `db-secret`{{copy}} with value `MYSQL_ROOT_PASSWORD=YoYoSecret`{{copy}} and `MYSQL_PASSWORD=XoXoPassword`{{copy}}.

2. Create a configmap `db-config`{{copy}} with value `MYSQL_USER=k8s`{{copy}} and `MYSQL_DATABASE=newdb`{{copy}}.

3. Create a pod named `mydb`{{copy}} with image `mysql:5.7`{{copy}} and expose all values of `db-secret` and `db-config` as environment variable to pod.

---
<br/>
<br/>
