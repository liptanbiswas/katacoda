#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get pv sidious-pv -o jsonpath='{.spec.accessModes[0]}' | grep -q -w ReadWriteOnce
KUBECONFIG=/root/.kube/config kubectl get pv sidious-pv -o jsonpath='{.spec.capacity.storage}' | grep -q -w 200Mi
KUBECONFIG=/root/.kube/config kubectl get pvc sidious-pvc -o jsonpath='{.status.phase}' | grep -q -w Bound
KUBECONFIG=/root/.kube/config kubectl get po sidious -o jsonpath='{.spec.containers[0].volumeMounts[?(@.name=="sidious-vol")].mountPath}' | grep -q -w "/var/lib/mysql"
KUBECONFIG=/root/.kube/config kubectl get po sidious -o jsonpath='{.spec.volumes[?(@.name=="sidious-vol")].persistentVolumeClaim.claimName}' | grep -q -w "sidious-pvc"
KUBECONFIG=/root/.kube/config kubectl get po sidious -o jsonpath='{.status.phase}' | grep -q -w "Running"
echo "done"
