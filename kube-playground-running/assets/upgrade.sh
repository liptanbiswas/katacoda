#!/bin/bash

echo Waiting for Kubernetes to start...
echo This might take up 5 minutes...
  while [ ! -f /root/.kube/upgraded ]
  do
    sleep 1
  done
echo Kubernetes started
if [ -f /root/.kube/start ]; then
  /root/.kube/start
fi
