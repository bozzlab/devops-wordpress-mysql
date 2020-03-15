#!/bin/bash

# Firstly prepare your cluster on GKE.

# Config gcloud and kubectl in local laptop. 
gcloud init # Initialize account and project.
gcloud container clusters get-credentials ever-cluster # Fetching cluster data and auth. 
kubectl config view # Check cluster credential and data.

#run cmd
kubectl create -f mysql-svc-deploy.yaml 
kubectl create -f wp-svc-deploy.yaml 
kubectl create -f mysql-app-deploy.yaml 
kubectl create -f wp-app-deploy.yaml 

#public ip 
34.87.149.48