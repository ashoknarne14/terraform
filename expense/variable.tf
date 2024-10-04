variable "instance_name" {
    default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
    
}

variable "hosted_zone" {
    default = "Z0349801RON7VAQ0OKJF"
}

variable "domain_name" {
    default = "narne.shop"
}