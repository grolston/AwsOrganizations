#!/bin/bash

## Update var to your Audit/SOC account
audit_account="123456789"

aws organizations enable-aws-service-access --service-principal guardduty.amazonaws.com
aws guardduty enable-organization-admin-account —admin-account-id "${audit_account}"