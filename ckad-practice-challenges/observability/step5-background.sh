#!/bin/bash

kubectl run coruscant --image=busybox --serviceaccount=non-default-sa --dry-run=client -o yaml -- sleep infinity > /root/coruscant.yaml
