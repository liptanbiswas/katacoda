#!/bin/bash

kubectl create deploy yavin --image=nginx

sleep 2

kubectl set image deploy yavin nginx=nginx-error --record
