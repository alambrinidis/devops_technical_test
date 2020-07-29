variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "aws_key_path" {
  default = "/root/terraform-ansible/terraform"
}

variable "aws_key_name" {
  default = ""
}

variable "aws_region" {
  description = "EC2 Region for the VPC"
  default     = "eu-west-1"
}

variable "amis" {
  description = "AMIs by region"
  default = {
    eu-west-1a = "ami-0c3e74fa87d2a4227"
  }
}

variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.0.0.0/20"
}

variable "public_subnet_cidr" {
  description = "CIDR for the Public Subnet"
  default     = "10.0.0.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR for the Private Subnet"
  default     = "10.0.1.0/24"
}

variable  "enabled" {
  default = "1"
}

variable  database_subnets {
    default = ["", ""]
  }
