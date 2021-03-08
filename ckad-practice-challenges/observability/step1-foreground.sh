#!/bin/bash

while [ ! -f /usr/bin/upgrade.sh ]; do clear; echo initializing; sleep 1; done
clear
upgrade.sh
