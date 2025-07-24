# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"  # Change this to your desired AWS region
}

# Example VPC resource
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "main-vpc"
    Environment = "dev"
  }
}
