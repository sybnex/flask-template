#!/bin/bash
set -e

APP="fame-calc"
TAG="0.1"

rm -f app/*.pyc
docker build -t sybnex/$APP:$TAG .
docker push sybnex/$APP:$TAG
