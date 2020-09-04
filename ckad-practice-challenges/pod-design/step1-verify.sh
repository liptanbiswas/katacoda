#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get deploy hoth -n planets -o jsonpath='{.spec.template.spec.containers[*].image}' | grep -q -w "httpd:2.4.46"
KUBECONFIG=/root/.kube/config kubectl get deploy hoth -n planets -o jsonpath='{.status.readyReplicas}' | grep -q -w 4
echo "done"
