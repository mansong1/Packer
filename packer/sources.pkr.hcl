locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

source "amazon-ebs" "vm" {
    ami_name                    = "${var.ami_name}-${local.timestamp}"
    instance_type               = "${var.instance_type}"
    region                      = "${var.region}"
    source_ami_filter {
        filters = {
            name = ""
            root-device-type = "ebs"
            virtualization-type = "hvm"
        }
        most_recent = true
        owners = ["${var.owner_id}"]
    }
    ssh_username = ${var.ssh_username}
}