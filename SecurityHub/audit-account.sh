#!/bin/bash

aws securityhub update-organization-configuration --auto-enable

## Note, any already deployed accounts will need to be added via the Admin account under Settings.
## Select the accounts and the go to actions under the Accounts tab in the Security Hub settings page.
## In the Actions button, select Add Member.