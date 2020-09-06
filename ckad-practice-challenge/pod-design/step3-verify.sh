#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get hpa naboo -o jsonpath="{.spec.targetCPUUtilizationPercentage}" | grep -q -w 80
KUBECONFIG=/root/.kube/config kubectl get hpa naboo -o jsonpath="{.spec.minReplicas}" | grep -q -w 2
KUBECONFIG=/root/.kube/config kubectl get hpa naboo -o jsonpath="{.spec.maxReplicas}" | grep -q -w 5

echo "done"
