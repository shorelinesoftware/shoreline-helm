#!/bin/bash

helm lint ./shoreline-agent
read -p "Continue? (Y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] || ! "$confirm" ]] || exit 1

helm package ./shoreline-agent

helm repo index . --merge index.yaml --url "https://raw.githubusercontent.com/shorelinesoftware/shoreline-helm/master/"
