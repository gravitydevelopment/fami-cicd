# Author : Fami Romli
# Project: https://github.com/gravitydevelopment/fami-cicd

terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}

provider "http" {}