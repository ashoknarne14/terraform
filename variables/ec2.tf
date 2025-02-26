resource "aws_instance" "ec2" {
    ami                     = var.ami_id
    instance_type           = var.instance_type
    vpc_security_group_ids   = [aws_security_group.security_group.id]

    tags = var.ec2_tags
    
}

resource "aws_security_group" "security_group" {
    name        = var.sg_name
    description = var.sg_desc

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
    from_port        = var.from_port
    to_port          = var.to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr_block
    ipv6_cidr_blocks = ["::/0"]
    }

    tags = var.sg_tags
  
    
}

