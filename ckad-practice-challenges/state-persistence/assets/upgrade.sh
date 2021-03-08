#!/bin/bash

echo Waiting for Kubernetes to start...
echo This might take up 5 minutes...
  while [ ! -f /root/.kube/installed ]
  do
    sleep 1
  done
echo Kubernetes started
