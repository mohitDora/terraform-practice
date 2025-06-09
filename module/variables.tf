variable "aws_root_storage_size" {
    type = number
    description = "Enter the aws root storage size"
}

variable "aws_root_storage_type" {
    type = string
    description = "Enter the aws root storage type"
}

variable "ec2_ami_id" {
    type = string
    description = "Enter the ec2 ami id"
}

variable "env" {
    type = string
    description = "Enter the environment"
}

variable "bucket_name" {
    type = string
    description = "Enter the bucket name"
}

variable "aws_instance_count" {
    type = number
    description = "Enter the aws instance count"
}

variable "aws_instance_type" {
    type = string
    description = "Enter the aws instance type"
  
}