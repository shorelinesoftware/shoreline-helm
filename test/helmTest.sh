#!/bin/bash

# bash helmTest.sh {1: daemonset / 2: deployment} 

TYPE=${1}
if [ ${TYPE} -eq 1 ]
then
  FILE="values_daemonset.yaml"
elif [ ${TYPE} -eq 2 ]
then
  FILE="values_deployment.yaml"
fi

helm template shoreline-agent ../shoreline-agent -f ${FILE} --debug
