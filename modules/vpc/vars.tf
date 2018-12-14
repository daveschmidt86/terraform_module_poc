variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "tennacy" {
  default = "dedicated"
}

variable "vpc_name" {
  default = "main"
}

variable "vpc_id" {}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet_name" {
  default = "main"
}
