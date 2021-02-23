#! /bin/sh
# Uninstall samples, restore Istio

helm template --namespace default bookinfo-product | kubectl delete -f -
helm template --namespace default bookinfo-details | kubectl delete -f -
helm template --namespace default bookinfo-reviews | kubectl delete -f -
helm template --namespace default bookinfo-auth-policy | kubectl delete -f -
helm template --namespace default egress | kubectl delete -f -
kubectl apply -f gateway.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/master/samples/sleep/sleep.yaml