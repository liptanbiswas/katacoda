#!/bin/bash
set -e

grep -q -w "anakin,busybox" /root/jedi-true.txt
grep -q -w "luke,redis" /root/jedi-true.txt
grep -q -w "padme,busybox" /root/jedi-true.txt
if grep -q -w "han,busybox" /root/jedi-true.txt; then exit 1; fi
echo "done"
