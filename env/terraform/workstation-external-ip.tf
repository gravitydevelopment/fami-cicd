# Author : Fami Romli
# Project: https://github.com/gravitydevelopment/fami-cicd


data "http" "workstation-external-ip" {
  url = "http://ipv4.icanhazip.com"
}

locals {
  workstation-external-cidr = "${chomp(data.http.workstation-external-ip.body)}/32"
}