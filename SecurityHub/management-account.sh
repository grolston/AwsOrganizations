#!/bin/bash

echo "Configuring Maciefor your AWS Organization"
read -p "Enter AWS Account ID to delegate Macie: " ACCOUNT_ID

## Enables Security Hub as an Organizational integrated service
aws organizations enable-aws-service-access --service-principal securityhub.amazonaws.com

## Sets the admin account for AWS Security Hub for the region you are running the CloudShell in
aws securityhub enable-organization-admin-account --admin-account-id "${ACCOUNT_ID"