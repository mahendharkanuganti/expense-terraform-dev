variable "project_name" {
    default = "expense"
}

variable "environment" {
    type = string
    default = "dev"
  
}
variable "common_tags" {
    default = {
        project = "expense"
        Terraform = "true"
        Environment = "dev"
    }
}