#!/bin/bash
set -e

grep -q -w 'kubernetes' /root/all-services.txt
grep -q -w 'kube-dns' /root/all-services.txt
echo "done"
