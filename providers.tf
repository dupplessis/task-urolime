terraform {
  required_version = ">= 1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"  # Set the default region or provide your desired value
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
  default     = ""  # Provide your AWS access key
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
  default     = ""  # Provide your AWS secret key
}

provider "aws" {
  region     = var.region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  # other options for authentication
}


