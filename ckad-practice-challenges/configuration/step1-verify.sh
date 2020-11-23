set -e
KUBECONFIG=/root/.kube/config kubectl get cm my-config -n datatab
KUBECONFIG=/root/.kube/config kubectl get cm my-config -n datatab -o jsonpath='{.data.confa}' | grep -q -w exvalue
echo "done"
