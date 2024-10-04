locals {
    ami_id = data.aws_ami.ami.id
    instance_count = length(var.instance_name)
}