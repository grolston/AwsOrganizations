#!/bin/bash

echo "Configuring GuardDuty for your AWS Organization"
read -p "Enter AWS Account ID to delegate GuardDuty: " ACCOUNT_ID

aws organizations enable-aws-service-access --service-principal guardduty.amazonaws.com
# registers only in the current region.
aws guardduty enable-organization-admin-account —admin-account-id "${ACCOUNT_ID}"

## TODO config for management account if needed
## The Management account is not controlled by Organization services and needs the service needs to be enabled
#read -p "Deploy GuardDuty to Management Account? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1