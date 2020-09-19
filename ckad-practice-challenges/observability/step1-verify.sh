#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get po myredis -o jsonpath='{.spec.containers[*].livenessProbe.initialDelaySeconds}' | grep -q -w 5
KUBECONFIG=/root/.kube/config kubectl get po myredis -o jsonpath='{.spec.containers[*].livenessProbe.exec.command}' | grep -q -w "redis-cli"
KUBECONFIG=/root/.kube/config kubectl get po myredis -o jsonpath='{.spec.containers[*].readinessProbe.initialDelaySeconds}' | grep -q -w 5
KUBECONFIG=/root/.kube/config kubectl get po myredis -o jsonpath='{.spec.containers[*].readinessProbe.exec.command}' | grep -q -w "PING"
KUBECONFIG=/root/.kube/config kubectl get po myredis -o jsonpath='{.status.containerStatuses[0].ready}' | grep -q -w "true"
echo "done"
