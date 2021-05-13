# AWS Organizations Integrated Services Configuration Guide

The following are services to considered for *security* at the AWS Organization level. The list is respective to the order of deployment at the AWS Organization level. Prior to deploying, you will need to clarify/document the roles/teams for security, auditor, operations, etc. These roles will map out to specific enterprise service accounts you will create and then delegate the services to.

## Prerequisites

The following is required:
1. AWS Org with `All Features` enabled (ref [documentation](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html))
2. Admin access to your `management account`
3. AWS Account set aside for enterprise security operations
4. AWS Account set aside for logging and archiving of records.

## TL;DR

In your `management account` go to the AWS CloudShell in the appropriate region. You may need to update AWS CLI which can be done by copying and pasting the following:

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsCloudShell/main/update.sh | bash
```

Once updated, select the service you want below and deploy/configure by cutting and paste the command. You will be prompted to enter the AWS account ID to delegate the service to within the organization.

- [Audit Manager](#audit-manager)
- [CloudFormation Stack Sets](#cloudformation-stack-sets)
- [CloudTrail](#cloudtrail)
- [Config](#config)
- [GuarDuty](#guardduty)
- [IAM Access Analyzer](#iam-access-analyzer)
- [Macie](#macie)
- [Security Hub](#security-hub)

### Audit Manager

In your `management account` open the CloudShell and run the following below. You will be prompted to enter the account ID you want to delegate AWS Audit Manager to.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/AuditManager/management-account.sh| bash
```

### CloudFormation Stack Sets

In your `management account` open the CloudShell and run the following below. You will be prompted to enter the account ID you want to delegate AWS Audit Manager to. Currently you can delegate up to 5 accounts.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/CloudFormationStackSets/management-account.sh | bash
```

> **Important:** CloudFormation StackSets fundamentally gives/delegates admin access to all accounts (excluding management account). Delegate this only to an enterprise operations account or an enterprise security account.


### CloudTrail

In your `management account` open the CloudShell and run the following. You will be prompted to enter the account ID you want to delegate AWS Audit Manager to. Currently you can delegate to only one account.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/CloudTrail/management-account.sh | bash
```

### Config

In your `management account` open the CloudShell and run the following. You will be prompted to enter the account ID you want to delegate AWS Audit Manager to. Currently you can delegate to only one account.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/Config/management-account.sh | bash
```

### GuardDuty

In your `management account` open the CloudShell and run the following below. You will be prompted to enter the account ID you want to delegate GuardDuty to. Currently you can delegate to only one account.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/GuardDuty/management-account.sh | bash
```

### IAM Access Analyzer

In your `management account` open the CloudShell and run the following below. You will be prompted to enter the account ID you want to delegate IAM Access Analyzer to. Currently you can delegate to only one account.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/IAMAccessAnalyzer/management-account.sh | bash
```

### Macie

In your `management account` open the CloudShell and run the following below. You will be prompted to enter the account ID you want to delegate Macie to. Currently you can delegate to only one account.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/Macie/management-account.sh| bash
```

### Security Hub

Currently you can delegate to only one account.

> **Note:** To deploy Security Hub you will need [Config](#config) deployed for the Organization. It is recommended GuardDuty as well is deployed

In your `management account` open the CloudShell and run the following. You will be prompted to enter the account ID you want to delegate AWS Audit Manager to.

```sh
curl -fsS https://raw.githubusercontent.com/grolston/AwsOrganizations/dev/GuardDuty/management-account.sh| bash
```