#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get po coruscant -o jsonpath='{.status.containerStatuses[0].ready}' | grep -q -w "true"
echo "done"
