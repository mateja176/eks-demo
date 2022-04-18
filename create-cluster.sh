#!/bin/bash

aws eks create-cluster \
  --name $name \
  --role-arn $role_arn \
  --resources-vpc-config subnetIds=subnet-$sid0,subnet-$sid1,subnet-$sid2,endpointPublicAccess=true,endpointPrivateAccess=false |
  jq
