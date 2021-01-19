#!/bin/bash

## Update var to your Audit/SOC account
audit_account="123456789"

aws organizations enable-aws-service-access --service-principal securityhub.amazonaws.com
aws securityhub enable-organization-admin-account --admin-account-id "${audit_account}"