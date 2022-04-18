#!/bin/bash

aws eks create-nodegroup \
  --cluster-name $cluster_name \
  --nodegroup-name $nodegroup_name \
  --node-role $role_arn \
  --subnets subnet-$subnet_id \
  --disk-size 200 \
  --scaling-config minSize=1,maxSize=2,desiredSize=1 \
  --instance-types t3.nano |
  jq
