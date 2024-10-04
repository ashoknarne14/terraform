resource "aws_instance" "ec2" {
    count = length(var.instance_name)

    ami                     = data.aws_ami.ami.id
    instance_type           = var.instance_name[count.index] == "mysql" ? "t3.small" : "t3.micro"
    vpc_security_group_ids   = [aws_security_group.security_group.id]

    tags =  {
            Name = var.instance_name[count.index]
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
    


