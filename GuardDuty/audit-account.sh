#!/bin/bash

## Note: this is a regional service. Whatever region you run the following command will GuardDuty be
## configured in. If you want different region add --region to the command
aws guardduty create-detector --enable --finding-publishing-frequency FIFTEEN_MINUTES

## Note: this is a regional service. Whatever region you run the following command will GuardDuty be
## configured in. If you want different region add --region to the command
aws guardduty update-organization-configuration --detector-id [whatever detector you just created ID] --auto-enable
