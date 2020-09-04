#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get cronjob bespin -o jsonpath='{.spec.schedule}' | grep -q -w "*/5 * * * *"
KUBECONFIG=/root/.kube/config kubectl get cronjob bespin -o jsonpath='{.spec.jobTemplate.spec.template.spec.containers[*].command}' | grep -q -w "date"

echo "done"
