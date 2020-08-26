#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl apply -f /root/mypodx.yaml --dry-run=server -o yaml | grep -q -w "kind: Pod"
KUBECONFIG=/root/.kube/config kubectl apply -f /root/mypodx.yaml --dry-run=server -o yaml | grep -q -w "image: redis"
KUBECONFIG=/root/.kube/config kubectl apply -f /root/mypodx.yaml --dry-run=server -o yaml | grep -q -w "name: mypodx"
echo "done"
