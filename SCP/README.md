# AWS Service Control Policies*

In setting up AWS Organizational integrated security services it is first recommended to deploy an SCP that limits activity to specific regions. The reason to limit regions is that many of the organizational integrated services are regionally deployed, thus meaning to ensure security you would need to deploy to all applicable regions.

> **Note:** Regarding AWS Organization integrated services, you should always delegate the service outside of the management account. Only service listed as unable to be delegated should remain in the Management account. Reference: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html