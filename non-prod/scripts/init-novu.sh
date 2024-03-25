#!/bin/bash

cd novu/docker/kubernetes/helm/
mv Chart.lock
helm dependency build
helm install my-novu  ./ --set store.encryptionKey=$(openssl rand -base64 32)