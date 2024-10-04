# 1. command line
# 2. terraform.tfvars
# 3. environment variable (TF_VAR_<variable_name>), 
# export TF_VAR_<variable_name>=value --> to set environment variable
# unset TF_VAR_<variable_name> --> Unset environment variable)
# 4. default
# 5. prompt
variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
    type = string
    description = "ami id of the os"  
    
}

variable "instance_type" {
     default = "t3.micro"
     type = string 
     description = "instance type of the server"
}

variable "from_port" {
    default = 22
    type = number
}

variable "to_port" {
    default = 22
    type = number
}

variable "protocol" {
    default = "tcp"
    type = string
}

variable "cidr_block" {
    default = ["0.0.0.0/0"]
    type = list(string)
}

variable "ec2" {
    type = string
    default = "allow_ssh_terraform"
}

variable "ec2_tags" {
    type = map
    default = {
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Name = "devops_terraform"
        Terraform = "true"
    }
}

variable "sg_tags" {
    type = map
    default = {
        Project = "expense"
        Component = "backend"
        Environment = "DEV"
        Name = "allow_ssh_terraform"
        Terraform = "true"
    }
}

variable "sg_name" {
    default = "allow_ssh_terraform"
}

variable "sg_desc" {
    default = "Allow ssh connections"
}