provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "ec2_instance_us" {
  source        = "../modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = var.instance_name
}

module "dynamodb_us" {
  source     = "../modules/dynamodb_table"
  table_name = var.table_name
}

output "US_EC2_Instance_ID" {
  value = module.ec2_instance_us.instance_id
}

output "US_DynamoDB_Table_Name" {
  value = module.dynamodb_us.table_name
}
