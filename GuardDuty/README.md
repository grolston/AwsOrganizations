# Organizations GuardDuty

Deploying AWS Guard Duty starts within the AWS Management Account for your organization. You will need to login to AWS Management console and start a CloudShell session with Admin permissions. From there run the management-account.sh commands. Once completed login to your Audit (aka SOC account) you would like to use and run the audit-account.sh scripts in this directory.

> **Note:** AWS GuardDuty is a regional service. Whatever region you run the following command will GuardDuty be configured in. If you want different region add `--region` to the commands.
