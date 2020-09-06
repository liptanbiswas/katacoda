#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get po dooku -o jsonpath='{.spec.containers[0].volumeMounts[?(@.name=="dooku-logs")].mountPath}' | grep -q -w "/var/log/dooku"
KUBECONFIG=/root/.kube/config kubectl get po dooku -o jsonpath='{.spec.containers[1].volumeMounts[?(@.name=="dooku-logs")].mountPath}' | grep -q -w "/var/log/dooku"
KUBECONFIG=/root/.kube/config kubectl get po dooku -o jsonpath='{.spec.volumes[?(@.name=="dooku-logs")].hostPath.path}' | grep -q -w "/data/dooku"
KUBECONFIG=/root/.kube/config kubectl get po dooku -o jsonpath='{.status.phase}' | grep -q -w "Running"

echo "done"
