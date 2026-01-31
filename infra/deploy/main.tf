terraform {


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }

  }

  backend "s3" {
    bucket               = "devops-terraform-vipul1"
    key                  = "tf-state-deploy"
    region               = "ap-south-1"
    dynamodb_table       = "devops-terraform-vipul-lock"
    encrypt              = true
    workspace_key_prefix = "tf_state-deploy-env"
  }
}
provider "aws" {
  region = "ap-south-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/deploy"
    }
  }
}
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}
data "aws_region" "current" {

}
