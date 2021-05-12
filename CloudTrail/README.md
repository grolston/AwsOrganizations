AWS CloudTrail can be deployed at the Organization-level. Within the management account you can create an organization trail that logs all events for all AWS accounts in that organization. Organization trails are automatically applied to all member accounts in the organization. Member accounts can see the organization trail, but can't modify or delete it. The concept behind orgs trails is that even if an entire AWS account is compromised they cannot delete or modify the Org Trail reporting into the masters account.

An Org Trail (CloudTrail for Organizations) cannot be delegated out to a separate account and must remain in management account at this time.

*Deploy to management account*
