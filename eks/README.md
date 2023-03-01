# GAZIN - TECHNICAL TEST
- Provisioning Kubernetes Cluster on an AWS cloud platform using Terraform;
- Develop a set of Kubernetes manifests or use Helm or Kustomize to provision a simple application (any Rest api available on dockerhub) on a Kubernetes cluster;
- Configure external access to the application using a LoadBalancer or ingress;
- Create HPA strategy;
- Create a CI/CD pipeline that allows the application to be automatically deployed to the Kubernetes cluster when there is an update to a Git repository.
___
## _CONFIGURING THE PROJECT_

## _Prerequisites_
- Terraform: https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

- aws-cli: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## _(optional)_

- Extension Vs Code HashiCorp Terraform: https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform


## _Clone project_
$  git clone https://github.com/rennanfsimoes/gazin-test/

## _Initialize terraform_
$  terraform init

## _Apply terraform_
$ terraform apply

## _Configuring Kubectl_
Run the following command to retrieve the access credentials for your cluster and configure kubectl.

$  aws eks --region $ (terraform output -raw region) update-kubeconfig --name $ (terraform output -raw cluster_name)

## _Verify the Cluster_
Use kubectl commands to verify your cluster configuration.

$  kubectl cluster-info
