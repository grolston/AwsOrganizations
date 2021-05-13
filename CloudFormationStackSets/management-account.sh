#!/bin/bash

echo "Configuring CloudFormation StackSets for your AWS Organization"
read -p "Enter AWS Account ID to delegate CloudFormation StackSets: " ACCOUNT_ID

## TODO Update CLI
aws organizations enable-aws-service-access --service-principal stacksets.cloudformation.amazonaws.com
aws organizations register-delegated-administrator --service-principal=member.org.stacksets.cloudformation.amazonaws.com --account-id="${ACCOUNT_ID}"