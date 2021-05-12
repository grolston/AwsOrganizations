# Organizations Security Hub

If you are worried about security or compliance then turn on Security Hub. It enables viewing your security state in AWS and check your environment against security industry standards and best practices. Currently CIS v1.2.0 and PCI DSS v3.2.1 supported. Through AWS Organizations you can automatically enable Security Hub for all of your organization's accounts, including new accounts as they are added. Additionally, the service can be delegated to a specified account outside of the Management Account. Security Hub is a regional service, meaning you would need to configure the centralized management within your delegated account per applicable region. Compliance standards are reported at the regional level as well. Security Hub essentially collects findings across all different AWS security and configuration services giving you a single pane of glass for security concerns. Additionally, Security Hub enables manual and automatic remediation capabilities through cross-account trust with your delegated administrator account.

AWS Security Hub requires AWS Config to be provisioned in all accounts and regions Security Hub collects results from.

> **Recommendation:** Delegate the service to your dedicated SOC AWS account

Deploying AWS Security Hub starts within the AWS Management Account for your organization. You will need to login to AWS Management console and start a CloudShell session with Admin permissions. From there run the management-account.sh commands. Once completed login to your Audit (aka SOC account) you would like to use and run the audit-account.sh scripts in this directory.

> **Note:** Any pre-existing accounts will need to be added via the Admin account under Settings. Select the accounts and the go to actions under the Accounts tab in the Security Hub settings page. In the Actions button, select Add Member.

**Important:** AWS GuardDuty is a regional service. Whatever region you run the following command will GuardDuty be configured in. If you want different region add `--region` to the commands.