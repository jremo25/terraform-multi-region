provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "ec2_instance_eu" {
  source        = "../modules/ec2_instance"
  ami           = var.ami
  instance_type = var.instance_type
  instance_name = var.instance_name
}

module "dynamodb_eu" {
  source     = "../modules/dynamodb_table"
  table_name = var.table_name
}

output "EU_EC2_Instance_ID" {
  value = module.ec2_instance_eu.instance_id
}

output "EU_DynamoDB_Table_Name" {
  value = module.dynamodb_eu.table_name
}
