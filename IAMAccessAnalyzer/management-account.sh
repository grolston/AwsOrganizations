#!/bin/bash

echo "Configuring IAM Access Analyzer for your AWS Organization"
read -p "Enter AWS Account ID to delegate IAM Access Analyzer: " ACCOUNT_ID

# TODO Update CLI
aws organizations enable-aws-service-access --service-principal access-analyzer.amazonaws.com
aws organizations register-delegated-administrator --service-principal access-analyzer.amazonaws.com --account-id=${ACCOUNT_ID}"