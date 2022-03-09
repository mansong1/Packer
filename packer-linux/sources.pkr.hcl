packer {
  required_plugins {
    amazon = {
      version = ">= 1.0.1"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "amazon-ebs" "linux" {
  ami_name      = "${var.ami_name}-${local.timestamp}"
  instance_type = "${var.instance_type}"
  region        = "${var.region}"
  source_ami_filter {
    filters = {
      name                = "*amzn2-ami-hvm-*"
      architecture        = "x86_64"
      root-device-type    = "ebs"
      virtualization-type = "hvm"
    }
    most_recent = true
    owners      = ["${var.owner_id}"]
  }
  ssh_username = "${var.ssh_username}"
}