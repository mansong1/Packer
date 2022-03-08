variable "region" {
  type    = string
  default = "us-east-2"
}

variable "instance_type" {
  type    = string
  default = "t3.large"
}

variable "ami_name" {
  type    = string
  default = "linux-cie"
}

variable "ssh_username" {
  type    = string
  default = "ec2-user"
}

variable "owner_id" {
  type    = string
  default = "amazon"
}