#!/bin/bash

eksctl create cluster \
  --name $name \
  --region $region \
  --managed \
  --node-type t3.nano \
  --nodes 1 \
  --node-volume-size 200 |
  jq
