#!/bin/bash

echo "Configuring Maciefor your AWS Organization"
read -p "Enter AWS Account ID to delegate Macie: " ACCOUNT_ID

## TODO Update CLI
aws organizations enable-aws-service-access --service-principal macie.amazonaws.com
aws organizations register-delegated-administrator --service-principal macie.amazonaws.com --account-id="${ACCOUNT_ID}"

## TODO config for management account if needed
## The management account is not controlled by Organization services and needs the service needs to be enabled
#read -p "Deploy GuardDuty to Management Account? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1