#!/bin/bash

aws guardduty create-detector --enable --finding-publishing-frequency FIFTEEN_MINUTES

aws guardduty update-organization-configuration --detector-id [whatever detector you just created ID] --auto-enable
