#!/bin/bash

## Note: this is a regional service. Whatever region you run the following command will GuardDuty be
## configured in. If you want different region add --region to the command

aws securityhub update-organization-configuration --auto-enable

## Note, any already deployed accounts will need to be added/converted via the Admin account under Settings/Accounts.
## Select the accounts and the go to actions under the Accounts tab in the Security Hub settings page.
## In the Actions button, select Add Member to convert.