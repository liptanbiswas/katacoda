#!/bin/bash
set -e
KUBECONFIG=/root/.kube/config kubectl exec al-pod -- printenv | grep -q -w liptan
echo "done"
