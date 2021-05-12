# Organizations GuardDuty

GuardDuty is a network intrusion detection/monitoring solution built into AWS. The service monitors VPC and S3 network traffic and analyzes it for malicious or suspicious behavior reporting them as findings. The full list of GuardDuty findings can be found at https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_finding-types-active.html . Findings are reported to the AWS GuardDuty web console within the account or reports back to a centralized account. Leveraging GuardDuty at the Organizational level ensure automated deployment of GuarDuty to all accounts within the organization. GuardDuty is a regional service which would require the organization setup to be deployed per region. It is best to deploy the service to every account as you are only billed for utilization (so if not network traffic or S3 activity, no utilization, no noticeable cost).

> **Recommendation:** is to delegate the service to your dedicated SOC AWS account

Deploying AWS Guard Duty starts within the AWS Management Account for your organization. You will need to login to AWS Management console and start a CloudShell session with Admin permissions. From there run the management-account.sh commands. Once completed login to your Audit (aka SOC account) you would like to use and run the audit-account.sh scripts in this directory.

> **Note:** AWS GuardDuty is a regional service. Whatever region you run the following command will GuardDuty be configured in. If you want different region add `--region` to the commands.
