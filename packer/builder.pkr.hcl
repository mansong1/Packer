build {
  name = "linux-cie"
  sources = [
    "source.amazon-ebs.vm"
  ]
  provisioner "ansible" {
    playbook_file = "../ansible/linux.yml"
  }

  post-processor "manifest" {
    output     = "manifest.json"
    strip_path = true
  }
}