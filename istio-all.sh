#! /bin/sh
# Installs all sample charts

helm template --namespace default bookinfo-product | kubectl apply -f -
helm template --namespace default bookinfo-details | kubectl apply -f -
helm template --namespace default bookinfo-reviews | kubectl apply -f -
helm template --namespace default bookinfo-auth-policy | kubectl apply -f -
helm template --namespace default egress | kubectl apply -f -
kubectl apply -f gateway.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/master/samples/sleep/sleep.yaml