build {
  name = "linux-cie"
  sources = [
    "source.amazon-ebs.vm"
  ]
  provisioner "ansible" {
    playbook_file = "../ansible/linux-cie.yml"
  }
}