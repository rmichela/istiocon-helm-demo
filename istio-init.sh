#! /bin/sh
# Initialize Istio

istioctl install --set profile=default --set meshConfig.outboundTrafficPolicy.mode=REGISTRY_ONLY -y
kubectl label namespace default istio-injection=enabled
kubectl apply -f gateway.yaml
kubectl apply -f https://raw.githubusercontent.com/istio/istio/master/samples/sleep/sleep.yaml