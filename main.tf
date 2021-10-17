provider "aws" {
  region     = "us-east-2"
  access_key = "AKIAZ6SR764BKBBO46X5"
  secret_key = "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"
}

resource "aws_vpc" "tf-vpc-01" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "tf-vpc-01"
  }
}

resource "aws_subnet" "tf-sub-01" {
  vpc_id     = aws_vpc.tf-vpc-01.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "tf-sub-01"
  }
}

resource "aws_internet_gateway" "tf-igw-01" {
  vpc_id = aws_vpc.tf-vpc-01.id

  tags = {
    Name = "tf-igw-01"
  }
}