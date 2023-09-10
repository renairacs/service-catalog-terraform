# AWS Service Catalog with Terraform

The purpose of this repository is to create an AWS Service Catalog template using Terraform. 
[Terraform AWS Service Catalog](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/servicecatalog_portfolio)


# Files

- main.tf
- outputs.tf
- variables.tf
- vpc-template.yaml
- .gitignore
 

## Files and their features

In the `main.tf file` we will be creating an AWS Service Catalog portfolio and a VPC using a template, to do this we need to save the `vpc-template.yaml` file in an S3 Bucket and add the address of the file on line 14 as shown in the example.
The `vpc-template.yaml` file is a simple **CloudFormation** file that creates two resources: VPC and Subnet.

## Observations
AWS account settings must be correct and added in **aws configure**.

## Required
Must have AWS CLI and Terraform installed.
- [AWS CLI Install](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- [Terraform Install ](https://developer.hashicorp.com/terraform/downloads) 
