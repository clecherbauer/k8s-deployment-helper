#!/bin/bash

set -e

apt-get update
apt-get install curl git openssh-client -y

curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get --output get
chmod +x ./get
./get --version v2.9.1

curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/


#cleanup
apt-get clean
rm -Rf /var/lib/apt/lists/*
rm -Rf /tmp/*

