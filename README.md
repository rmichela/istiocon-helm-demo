# Script

## Initialize

```sh
> ./istio-init.sh
```

## Present

<http://lvh.me/productpage>

```sh
> helm template --namespace default bookinfo-product | kubectl apply -f -
> helm template --namespace default bookinfo-details | kubectl apply -f -
> helm template --namespace default bookinfo-reviews | kubectl apply -f -
> helm template --namespace default bookinfo-policy | kubectl apply -f -
> helm template --namespace default egress | kubectl apply -f -
```

## Reset

```sh
> ./istio-reset.sh
```
