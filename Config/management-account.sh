#!/bin/bash

echo "Configuring AWS Config for your AWS Organization"
read -p "Enter AWS Account ID to delegate AWS Config: " ACCOUNT_ID


aws organizations enable-aws-service-access --service-principal config.amazonaws.com
aws organizations register-delegated-administrator --service-principal config.amazonaws.com --account-id  "${ACCOUNT_ID}"

## TODO Deploy Config stack
#read -p "Deploy AWS Config to Management Account? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1