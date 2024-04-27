

variable "ami" {
  description = "The AMI ID to use for the EC2 instances"
}

variable "instance_type" {
  description = "The type of EC2 instance to deploy"
}

variable "instance_name" {
  description = "The name tag for the EC2 instance"
}

variable "table_name" {
  description = "The name of the DynamoDB table"
}
