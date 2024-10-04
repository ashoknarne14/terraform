data "aws_ami" "ami" {
  most_recent      = true
  owners           = [973714476881]

#   filter {
#     name   = "name"
#     values = ["Centos-8-DevOps-Practice"]
#   }

  filter {
    name   = "image-type"
    values = ["machine"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}