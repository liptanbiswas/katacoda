#!/bin/bash

cat <<EOF > check.sh
#!/bin/bash
set -o xtrace

kubectl get ns | grep testns
echo $?
EOF

chmod +x check.sh

sh check.sh  2>&1 /tmp/out
