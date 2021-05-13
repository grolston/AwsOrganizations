#!/bin/bash

echo "Configuring AWS Audit Manager for your AWS Organization"
read -p "Enter AWS Account ID to delegate Audit Manager: " ACCOUNT_ID

## TODO Update CLI
aws organizations enable-aws-service-access --service-principal auditmanager.amazonaws.com
aws audit-manager register-organization-admin-account --admin-account-id "${ACCOUNT_ID}"

## TODO config if needed
## The Management account is not controlled by Organization services and needs the service needs to be enabled
#read -p "Configure Audit Manager for Management Account? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1