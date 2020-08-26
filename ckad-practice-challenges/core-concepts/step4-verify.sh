#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get svc -A -o jsonpath="{.items[*].metadata.name}" | grep -q -E 'kubernetes.*kube-dns|kube-dns.*kubernetes'
echo "done"
