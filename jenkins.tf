provider "aws" {
  region = local.region
}

locals {
  region = "eu-west-3"
}

################################################################################
# Mon VPC
################################################################################

resource "aws_vpc" "web" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy 	= "default"

  tags = {
    Name = "web_vpc"
  }
}
