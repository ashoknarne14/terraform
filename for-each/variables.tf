variable "instance_name" {
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "instance_names" {
    default = ["mysql", "backend", "frontend"]
}
variable "hosted_zone" {
    default = "Z0349801RON7VAQ0OKJF"
}

variable "domain_name" {
    default = "narne.shop"
}