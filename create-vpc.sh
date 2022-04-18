#!/bin/bash

aws cloudformation deploy \
  --template-file amazon-eks-vpc-sample.yaml \
  --stack-name $name |
  jq
