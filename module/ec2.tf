resource "aws_key_pair" "my_key" {
    key_name   = "${var.env}-my-key"
    public_key = file("~/.ssh/id_rsa.pub") 

    tags = {
        Environment = var.env
    }
}

resource "aws_default_vpc" "default" {
  tags = {
    Name = "${var.env}-default-vpc"
  }
}

resource "aws_security_group" "my_security_group" {
    name = "${var.env}-my-security-group"
    vpc_id = aws_default_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH access"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP access"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }
  tags = {
    Environment = var.env
  }
}

resource "aws_instance" "my_instance" {
    count = var.aws_instance_count
    key_name        = aws_key_pair.my_key.key_name
    ami             = var.ec2_ami_id
    instance_type   = var.aws_instance_type
    vpc_security_group_ids = [aws_security_group.my_security_group.id]
    depends_on      = [ aws_security_group.my_security_group ]

    tags = {
        Name = "${var.env}-my-instance"
        Environment = var.env
    }

    root_block_device {
        volume_size = var.env=="dev" ? var.aws_root_storage_size : 20
        volume_type = var.aws_root_storage_type
    }
}