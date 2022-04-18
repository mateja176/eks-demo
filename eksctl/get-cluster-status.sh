#!/bin/bash

eksctl get cluster \
  --name $name |
  jq .cluster.status |
  sed s/\"//g
