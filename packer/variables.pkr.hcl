variable "region" {
  type    = string
  default = "us-east-2"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ami_name" {
  type    = string
  default = "linux-cie"
}

variable "ssh_username" {
  type    = string
  default = "ec2-user"
}