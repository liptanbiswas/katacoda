#!/usr/bin/python3
import subprocess


class bcolors:
    OKGREEN = '\033[92m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'


def check_cmd(command, test):
    s = subprocess.run(command, shell=True,
                       stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    if s.returncode == 0:
        print(test + f" {bcolors.OKGREEN}Passed{bcolors.ENDC}")
    else:
        print(test + f"{bcolors.FAIL} Failed{bcolors.ENDC}")


print("\nQuestion 1:")
check_cmd("kubectl get ns frontend", "Namespace frontend created?")

print("\nQuestion 2:")
check_cmd(
    "kubectl get po -n frontend -o jsonpath='{.items[*].metadata.name}' | grep -q -w nginx", "Namespace frontend has a pod nginx?")
check_cmd(
    "kubectl get po nginx -n frontend -o jsonpath='{.spec.containers[*].image}' | grep -q -w nginx", "Pod nginx is using image nginx?")

print("\nQuestion 3:")
check_cmd(
    "grep -q -w 'coredns' /root/kube-system-pods.txt", "File /root/kube-system-pods.txt lists pods from kube-system Namespace?")
check_cmd(
    "grep -q -w 'kube-apiserver-controlplane' /root/kube-system-pods.txt", "File /root/kube-system-pods.txt lists pods from kube-system Namespace?")

print("\nQuestion 4:")
check_cmd(
    "grep -q -w 'kubernetes' /root/all-services.txt", "File /root/all-services.txt lists services from all namespaces?")
check_cmd(
    "grep -q -w 'kube-dns' /root/all-services.txt", "File /root/all-services.txt has lists services from all namespaces?")

print("\nQuestion 5:")
check_cmd(
    "kubectl get po hello | grep -q -w Completed", "Pod hello is completed and not restarting?")
check_cmd(
    "kubectl logs hello | grep -q -w 'Hello World'", "Pod hello printed 'Hello World'")

print("\nQuestion 6:")
check_cmd(
    "kubectl apply -f /root/mypodx.yaml --dry-run=server -o yaml | grep -q -w 'kind: Pod'", "Manifast /root/mypodx.yaml has correct syntext?")
check_cmd(
    "kubectl apply -f /root/mypodx.yaml --dry-run=server -o yaml | grep -q -w 'image: redis'", "Manifast /root/mypodx.yaml uses redis image?")
check_cmd(
    "kubectl apply -f /root/mypodx.yaml --dry-run=server -o yaml | grep -q -w 'name: mypodx'", "Manifast /root/mypodx.yaml pod has name mypodx?")
