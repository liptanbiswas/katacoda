#!/bin/bash

# Pull image in background
kubeadm config images pull --kubernetes-version 1.19.0 &

# Upgrade node in background
ssh node01 'apt-get update -y &&  apt-get install -y kubelet=1.19.0-00 kubeadm=1.19.0-00 && kubeadm upgrade node' >/tmp/node-upgrade.log 2>&1 &

# Upgrade master node
apt-get update -y
apt-get install -y kubectl=1.19.0-00 kubeadm=1.19.0-00 kubelet=1.19.0-00
kubeadm upgrade apply 1.19.0 --yes
touch /root/.kube/upgraded
