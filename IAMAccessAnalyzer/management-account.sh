#!/bin/bash

echo "Configuring IAM Access Analyzer for your AWS Organization"
read -p "Enter AWS Account ID to delegate IAM Access Analyzer: " ACCOUNT_ID

# TODO Update CLI
aws organizations enable-aws-service-access --service-principal access-analyzer.amazonaws.com
aws organizations register-delegated-administrator --service-principal access-analyzer.amazonaws.com --account-id="${ACCOUNT_ID}"

# TODO config for master if needed
## The Management account is not controlled by Organization services and needs the service needs to be enabled
# read -p "Deploy IAM Access Analyzer to Management Account? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1