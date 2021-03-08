#!/bin/bash

echo Waiting for Kubernetes to start...
echo This might take up 5 minutes...
echo Do NOT press continue until your environment is ready...
  while [ ! -f /root/.kube/installed ]
  do
    sleep 1
  done
echo Kubernetes started