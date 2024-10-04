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

    
    dynamic ingress {
        for_each = var.ingress_block
        content {
            from_port        = ingress.value.from_port
            to_port          = ingress.value.to_port
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value.cidr_blocks
            ipv6_cidr_blocks = ingress.value.ipv6_cidr_blocks
            }
        }

    tags = {
    Name = "allow_ssh_terraform"
  }
    
}