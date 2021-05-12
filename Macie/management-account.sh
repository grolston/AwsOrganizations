#!/bin/bash

echo "Configuring Maciefor your AWS Organization"
read -p "Enter AWS Account ID to delegate Macie: " ACCOUNT_ID

## TODO Update CLI
aws organizations enable-aws-service-access --service-principal guardduty.amazonaws.com
aws guardduty enable-organization-admin-account —admin-account-id "${ACCOUNT_ID}"