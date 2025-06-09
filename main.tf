module "dev" {
    source = "./module"
    aws_instance_type = "t2.micro"
    aws_root_storage_size = 10
    aws_root_storage_type = "gp3"
    ec2_ami_id = "ami-0c1a7f89451184c7b"
    env = "dev"
    bucket_name = "my-bucket"
    aws_instance_count=3
}
module "prod" {
    source = "./module"
    aws_instance_type = "t2.micro"
    aws_root_storage_size = 20
    aws_root_storage_type = "gp3"
    ec2_ami_id = "ami-0c1a7f89451184c7b"
    env = "prod"
    bucket_name = "my-bucket"
    aws_instance_count=3
}
module "testing" {
    source = "./module"
    aws_instance_type = "t2.micro"
    aws_root_storage_size = 5
    aws_root_storage_type = "gp3"
    ec2_ami_id = "ami-0c1a7f89451184c7b"
    env = "test"
    bucket_name = "my-bucket"
    aws_instance_count=1
}