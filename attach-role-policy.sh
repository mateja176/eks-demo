#!/bin/bash

aws iam attach-role-policy \
  --role-name $role_name \
  --policy-arn arn:aws:iam::aws:policy/$policy_name |
  jq
