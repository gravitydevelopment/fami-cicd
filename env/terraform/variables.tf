# Author : Fami Romli
# Project: https://github.com/gravitydevelopment/fami-cicd

variable "aws_region" {
  default = "ap-southeast-1"
}

variable "cluster-name" {
  default = "terraform-eks-demo-cluster"
  type    = string
}