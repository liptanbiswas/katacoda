#!/bin/bash

echo Watiting for assets..
  while [ ! -f /usr/bin/k8s-upgrade-1.19.sh ]
  do
    sleep 1
  done
k8s-upgrade-1.19.sh
