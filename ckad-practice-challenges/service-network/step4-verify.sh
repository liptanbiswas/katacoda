#!/bin/bash
set -e

KUBECONFIG=/root/.kube/config kubectl get networkpolicy geonosis-shield -o jsonpath='{.spec.podSelector.matchLabels.sector}' | grep -q -w arkanis
KUBECONFIG=/root/.kube/config kubectl get networkpolicy geonosis-shield -o jsonpath='{.spec.ingress[0].from[0].podSelector.matchLabels.empire}' | grep -q -w true
echo "done"
