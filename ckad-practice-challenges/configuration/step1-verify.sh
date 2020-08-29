#!/bin/bash
set -e
KUBECONFIG=/root/.kube/config kubectl get cm my-config -n database
KUBECONFIG=/root/.kube/config kubectl get cm my-config -n datatab -o jsonpath='{.data.confa}' | grep -q -w exvalue
echo "done"
