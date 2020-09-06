#!/bin/bash
export KUBECONFIG=/root/.kube/config
kubectl create cm al-conf --from-literal=al-user=liptan --dry-run=client -o yaml | kubectl apply -f -