#!/bin/bash

# Pull image in background
kubeadm config images pull --kubernetes-version 1.20.0 >>/tmp/master-upgrade.log 2>&1 &

# Upgrade node in background
ssh node01 'apt-get update -y &&  apt-get install -y kubelet=1.20.0-00 kubeadm=1.20.0-00' >/tmp/node-upgrade.log 2>&1 &

# Upgrade master node
apt-get update -y >>/tmp/master-upgrade.log 2>&1
apt-get install -y kubectl=1.20.0-00 kubeadm=1.20.0-00 kubelet=1.20.0-00 >>/tmp/master-upgrade.log 2>&1

# Wait for kubeadm to install cluster before upgrading it.
while [ ! -f /root/.kube/config ]
do
    sleep 1
done

kubeadm upgrade apply 1.20.0 --yes --ignore-preflight-errors=all >>/tmp/master-upgrade.log 2>&1

# Upgrade node in background
ssh node01 'kubeadm upgrade node' >>/tmp/node-upgrade.log 2>&1 &

touch /root/.kube/upgraded
