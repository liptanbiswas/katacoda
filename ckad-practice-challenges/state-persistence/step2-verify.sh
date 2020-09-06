#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get pvc maul-pvc -o jsonpath='{.status.phase}' | grep -q -w Bound
echo "done"
