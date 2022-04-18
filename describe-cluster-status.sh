#!/bin/bash

aws eks describe-cluster \
  --name $name |
  jq .cluster.status |
  sed s/\"//g
