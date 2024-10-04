variable "instance_type" {
    default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
    default = {
        Project = "expense"
        Environment = "Dev"
        Terraform = "true"
    }
    
}