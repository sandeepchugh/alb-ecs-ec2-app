# Api using AWS ECS EC2 cluster, application load balancer and python

##What is this?

Api deployed in docker ecs ec2 cluster with application load balancer using terraform. 
The API subnets are configured to use a static outbound IP (required by many third party apis)
on which the api is dependent

The following aws services are used:

- EC2 
- ECS
- Application Load Balancer
- Security Groups
- Target Groups
- VPC, Subnets, RouteTable, InternetGateway, NatGateway

## What language is this developed in?

The IAC(Infrastructure as code) code is Terraform

## How is this deployed?

The project uses terraform to deploy the resources and depencencies in AWS.

Install terraform in your local machine or build server using terraform cli https://www.terraform.io/downloads.html

Terraform uses the aws provider to interact with aws services. More details on the aws provider are available at https://www.terraform.io/docs/providers/aws/index.html

#### IAC (Terraform)

DEVELOPMENT
```shell script
terraform init -backend-config dev.tfbackend
terraform plan -var-file dev.tfvars
terraform apply -var-file dev.tfvars

Note: Change the bucket name in dev.tfbackend to a unique bucket name
```

## How does this work?

TODO: add usage details