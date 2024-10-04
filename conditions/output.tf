output "public_ip" {
    value = aws_instance.ec2.public_ip
    sensitive = "false"
    description = "public ip of ec2 instance"
    depends_on = []
}