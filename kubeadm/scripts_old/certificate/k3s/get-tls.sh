#!/bin/bash

rancher kubectl get secret -n cattle-system tls-rancher -o jsonpath="{.data.tls\.crt}" | base64 --decode >> tls-rancher.crt
rancher kubectl get secret -n cattle-system tls-rancher-internal -o jsonpath="{.data.tls\.crt}" | base64 --decode >> tls-rancher-internal.crt
rancher kubectl get secret -n cattle-system tls-rancher-internal-ca -o jsonpath="{.data.tls\.crt}" | base64 --decode >> tls-internal-ca.crt
