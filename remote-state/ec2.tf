resource "aws_instance" "ec2" {
    ami                     = "ami-09c813fb71547fc4f"
    instance_type           = "t3.micro"
    vpc_security_group_ids   = [aws_security_group.security_group.id]

    tags = {
    Name = "devops_terraform"
  }
    
}

resource "aws_security_group" "security_group" {
    name        = "allow_ssh_terraform"
    description = "Allow ssh connections"

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
    Name = "allow_ssh_terraform"
  }
    
}

