#!/bin/bash

for policy in AmazonEKSWorkerNodePolicy AmazonEKS_CNI_Policy AmazonEC2ContainerRegistryReadOnly; do
  role_name=$role_name policy_name=$policy ./attach-role-policy.sh
done
