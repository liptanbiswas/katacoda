#!/bin/bash
set -e

grep -q -E 'kubernetes.*kube-dns|kube-dns.*kubernetes' /root/all-services.txt
echo "done"
