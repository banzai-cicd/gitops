#!/bin/bash

echo "Deploy Script"
ENV=$1
STACK=$2
STACK_FILE="${WORKSPACE}/envs/${ENV}/${STACK}.yaml"

echo "dummy deploy command"
echo "docker stack deploy ${STACK_FILE}"