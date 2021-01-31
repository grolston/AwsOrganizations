#!/bin/bash

## Update var to your Audit/SOC account
audit_account="123456789"

## Enables Security Hub as an Organizational integrated service
aws organizations enable-aws-service-access --service-principal securityhub.amazonaws.com

## Sets the admin account for AWS Security Hub for the region you are running the CloudShell in
aws securityhub enable-organization-admin-account --admin-account-id "${audit_account}"