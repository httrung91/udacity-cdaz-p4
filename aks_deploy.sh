#!/bin/bash

az acr create --resource-group acdnd-c4-project --name myacr202308 --sku Basic
az acr login --name myacr202308
az acr show --name myacr202308 --query loginServer --output table

docker tag azure-vote-front:v1 myacr202308.azurecr.io/azure-vote-front:v1
docker push myacr202308.azurecr.io/azure-vote-front:v1

az acr repository list --name myacr202308 --output table
az aks update -n udacity-cluster -g acdnd-c4-project --attach-acr myacr202308

az acr show --name myacr202308 --query loginServer --output table