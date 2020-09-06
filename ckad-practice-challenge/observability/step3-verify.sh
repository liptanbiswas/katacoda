#!/bin/bash
set -e
grep -q 'HOSTNAME=myenv' /root/myenv.log
if KUBECONFIG=/root/.kube/config kubectl get po -o jsonpath="{.items[*].metadata.name}" | grep -q -w myenv ; then exit 1; fi
echo "done"
