## argocd

![squareops_avatar]

[squareops_avatar]: https://squareops.com/wp-content/uploads/2022/12/squareops-logo.png

### [SquareOps Technologies](https://squareops.com/) Your DevOps Partner for Accelerating cloud journey.
<br>

This module deploys ArgoCD with Redis High Availability (HA) as the backend data store, and Slack notifications configured for real-time updates about deployments. With this module, you can automate your application deployment process with the GitOps methodology and ensure that the desired state of your application is always in sync with the actual state. Redis HA provides enhanced resilience and availability, while Slack notifications keep you informed of the status of your deployments.

## Important Notes:
This module is compatible with EKS, AKS & GKE which is great news for users deploying the module on an AWS, Azure & GCP cloud. Review the module's documentation, meet specific configuration requirements, and test thoroughly after deployment to ensure everything works as expected.

## Supported Versions:

|  Argocd Helm Chart Version    |     K8s supported version (EKS, AKS & GKE)   |  
| :-----:                       |         :---                |
| **5.53.11**                     |    **1.23,1.24,1.25,1.26,1.27**           |


## Usage Example

```hcl
module "argocd" {
  source        = "squareops/argocd/kubernetes"
  argocd_config = {
    hostname                   = "argocd.prod.in"
    values_yaml                = ""
    redis_ha_enabled           = true
    autoscaling_enabled        = true
    slack_notification_token   = "xoxb-qQ8486bluEuvmxrYx"
    argocd_notifications_enabled = true  
  }
}

```
- Refer [AWS examples](https://github.com/squareops/terraform-kubernetes-argocd/tree/main/examples/complete/aws) for more details.
- Refer [Azure examples](https://github.com/squareops/terraform-kubernetes-argocd/tree/main/examples/complete/azure) for more details.
- Refer [GCP examples](https://github.com/squareops/terraform-kubernetes-argocd/tree/main/examples/complete/gcp) for more details.

## IAM Permissions
The required IAM permissions to create resources from this module can be found [here](https://github.com/squareops/terraform-kubernetes-argocd/blob/main/IAM.md)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.argocd_deploy](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.argocd](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_secret.argocd-secret](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_argocd_config"></a> [argocd\_config](#input\_argocd\_config) | Specify the configuration settings for Argocd, including the hostname, redis\_ha\_enabled, autoscaling, notification settings, and custom YAML values. | `any` | <pre>{<br>  "argocd_notifications_enabled": false,<br>  "autoscaling_enabled": false,<br>  "hostname": "",<br>  "redis_ha_enabled": false,<br>  "slack_notification_token": "",<br>  "values_yaml": ""<br>}</pre> | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Version of the Argocd chart that will be used to deploy Argocd application. | `string` | `"5.53.11"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Name of the Kubernetes namespace where the Argocd deployment will be deployed. | `string` | `"argocd"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_argocd"></a> [argocd](#output\_argocd) | Argocd\_Info |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contribution & Issue Reporting

To report an issue with a project:

  1. Check the repository's [issue tracker](https://github.com/squareops/terraform-kubernetes-argocd/issues) on GitHub
  2. Search to see if the issue has already been reported
  3. If you can't find an answer to your question in the documentation or issue tracker, you can ask a question by creating a new issue. Be sure to provide enough context and details so others can understand your problem.

## License

Apache License, Version 2.0, January 2004 (http://www.apache.org/licenses/).

## Support Us

To support a GitHub project by liking it, you can follow these steps:

  1. Visit the repository: Navigate to the [GitHub repository](https://github.com/squareops/terraform-kubernetes-argocd).

  2. Click the "Star" button: On the repository page, you'll see a "Star" button in the upper right corner. Clicking on it will star the repository, indicating your support for the project.

  3. Optionally, you can also leave a comment on the repository or open an issue to give feedback or suggest changes.

Starring a repository on GitHub is a simple way to show your support and appreciation for the project. It also helps to increase the visibility of the project and make it more discoverable to others.

## Who we are

We believe that the key to success in the digital age is the ability to deliver value quickly and reliably. That’s why we offer a comprehensive range of DevOps & Cloud services designed to help your organization optimize its systems & Processes for speed and agility.

  1. We are an AWS Advanced consulting partner which reflects our deep expertise in AWS Cloud and helping 100+ clients over the last 5 years.
  2. Expertise in Kubernetes and overall container solution helps companies expedite their journey by 10X.
  3. Infrastructure Automation is a key component to the success of our Clients and our Expertise helps deliver the same in the shortest time.
  4. DevSecOps as a service to implement security within the overall DevOps process and helping companies deploy securely and at speed.
  5. Platform engineering which supports scalable,Cost efficient infrastructure that supports rapid development, testing, and deployment.
  6. 24*7 SRE service to help you Monitor the state of your infrastructure and eradicate any issue within the SLA.

We provide [support](https://squareops.com/contact-us/) on all of our projects, no matter how small or large they may be.

To find more information about our company, visit [squareops.com](https://squareops.com/), follow us on [Linkedin](https://www.linkedin.com/company/squareops-technologies-pvt-ltd/), or fill out a [job application](https://squareops.com/careers/). You can also checkout our [Case-studies](https://squareops.com/case-studies/) or [Blogs](https://squareops.com/blog/) to understand more about our solutions. If you have any questions or would like assistance with your cloud strategy and implementation, please don't hesitate to [contact us](https://squareops.com/contact-us/).
