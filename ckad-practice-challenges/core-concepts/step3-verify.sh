#!/bin/bash
set -e

grep -q -w 'coredns' /root/kube-system-pods.txt
grep -q -w 'kube-apiserver-controlplane' /root/kube-system-pods.txt
grep -q -w 'kube-scheduler-controlplane' /root/kube-system-pods.txt
echo "done"
