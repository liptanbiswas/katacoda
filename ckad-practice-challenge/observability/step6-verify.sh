#!/bin/bash
set -e

grep -q -w dagobah /root/high-cpu.yaml
echo "done"
