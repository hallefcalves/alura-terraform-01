variable "amis" {
  type = map

  default = {
      "us-east-1" = "ami-04505e74c0741db8d"
      "us-east-2" = "ami-002068ed284fb165b"
  }
}

variable "cdirs_acesso_remoto" {
  type = list
  default = [
      "201.182.193.10/32"
  ]
}

variable "instance_type" {
    default = "t2.micro"
}

variable "key_name" {
  default = "terraform-aws"
}