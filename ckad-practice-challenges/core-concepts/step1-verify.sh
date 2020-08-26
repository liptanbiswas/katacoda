#!/bin/bash
set -e
KUBECONFIG=/root/.kube/config kubectl get ns | grep -q frontend
echo "done"
