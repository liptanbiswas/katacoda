#!/bin/bash

echo Waiting for Kubernetes to start...
echo This might take up 5 minutes...
echo Do NOT press continue until your environment is ready...
  while [ ! -f /root/.kube/upgraded ]
  do
    sleep 1
  done
echo Kubernetes started
if [ -f /root/.kube/start ]; then
  /root/.kube/start
fi
