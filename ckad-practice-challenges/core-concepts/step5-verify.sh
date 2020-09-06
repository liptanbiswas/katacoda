#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get po hello | grep -q -w Completed
echo "done"
