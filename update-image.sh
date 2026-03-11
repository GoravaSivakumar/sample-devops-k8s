#!/bin/bash

TAG=$1

sed -i "s|image:.*|image: yourdockerhub/devops-flask-app:$TAG|g" deployment.yaml

git config --global user.email "ci@example.com"
git config --global user.name "github-actions"

git add .
git commit -m "Updated image tag to $TAG"

git push