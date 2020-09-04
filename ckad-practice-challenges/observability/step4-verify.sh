#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get po tatooine -o jsonpath='{.spec.containers[0]}' | grep -q -w "sleep"
KUBECONFIG=/root/.kube/config kubectl get po tatooine -o jsonpath='{.status.containerStatuses[0].ready}' | grep -q -w "true"
echo "done"
