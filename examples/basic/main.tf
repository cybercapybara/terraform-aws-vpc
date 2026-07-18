terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

variable "region" {
  description = "AWS region to deploy the example VPC into."
  type        = string
  default     = "us-east-1"
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../.."

  name       = "example-vpc"
  cidr_block = "10.10.0.0/16"

  tags = {
    Environment = "sandbox"
    ManagedBy   = "terraform"
  }
}

output "vpc_id" {
  value = module.vpc.id
}
