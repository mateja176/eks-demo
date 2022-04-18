#!/bin/bash

aws iam create-role \
  --role-name $name \
  --assume-role-policy-document file://$policy_path |
  jq .Role.Arn |
  sed s/\"//g
