variable "ec2_instance_type" {
    type = string
    default = "t2.micro"
}

variable "aws_root_storage_size" {
    type = number
    default = 10
}

variable "aws_root_storage_type" {
    type = string
    default = "gp3"
}

variable "ec2_ami_id" {
    type = string
    default = "ami-0c1a7f89451184c8b"
}

variable "env" {
    type = string
    default = "dev"
}