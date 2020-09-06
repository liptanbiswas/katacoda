#!/bin/bash

kubectl run geonosis --image=nginx --labels=sector=arkanis
kubectl expose pod geonosis --port=80