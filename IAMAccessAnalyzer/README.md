# IAM Access Analyzer

Analyze resource-based policies in your AWS environment to identify any policies that grant access to a principal outside of your zone of trust. When setup as an AWS Organization integrated service the zone of trust is the AWS organization. Since IAM is a global service, the IAM Access Analyzer needs to be only deployed to one region for all accounts. The IAM Access Analyzer service can be delegated out to a specified account. Results from the IAM Access Analyzer can be sent to AWS Security Hub for viewing, monitoring, and analysis.

> **Recommendation:** Delegate the service to your dedicated SOC AWS account
