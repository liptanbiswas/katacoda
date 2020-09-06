Complete the following tasks.

---

1. Create a persistent volume `sidious-pv`{{copy}} with `200Mi`{{copy}} at `/data/mysql`{{copy}} on host. Use `manual`{{copy}} storageClassName and `ReadWriteOnce`{{copy}} access mode.

2. Create a persistent volume claim `sidious-pvc`{{copy}} and consume the pv `sidious-pv`{{copy}}.

3. Create a pod `sidious`{{copy}} with image `mysql`{{copy}} and mount the PVC at `/var/lib/mysql`{{copy}} using volume name `sidious-vol`{{copy}}. Set an environment variable `MYSQL_ROOT_PASSWORD=my-secret-pw` as well.

---
<br/>
<br/>
