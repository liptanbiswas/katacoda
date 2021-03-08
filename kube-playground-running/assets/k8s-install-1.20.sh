#!/bin/bash

# Pull image in background
kubeadm config images pull --kubernetes-version 1.20.0 >>/tmp/master-upgrade.log 2>&1 &

# Install node dependencies
ssh node01 'apt-get update -y &&  apt-get install -y kubelet=1.20.0-00 kubeadm=1.20.0-00' >/tmp/node-upgrade.log 2>&1 &

# Install master dependencies
apt-get update -y >>/tmp/master-upgrade.log 2>&1
apt-get install -y kubectl=1.20.0-00 kubeadm=1.20.0-00 kubelet=1.20.0-00 >>/tmp/master-upgrade.log 2>&1

# Install K8s
kubeadm init --kubernetes-version=1.20.0 --pod-network-cidr=192.168.0.0/16 >>/tmp/master-upgrade.log 2>&1

## Copy config
mkdir -p $HOME/.kube >>/tmp/master-upgrade.log 2>&1
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config >>/tmp/master-upgrade.log 2>&1
sudo chown $(id -u):$(id -g) $HOME/.kube/config >>/tmp/master-upgrade.log 2>&1

# join the node
kubeadm token create --print-join-command | ssh -tt node01 "${JOIN_NODE_CMD}" >>/tmp/node-upgrade.log 2>&1 &

# Install CNI
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml >>/tmp/master-upgrade.log 2>&1

touch /root/.kube/installed
