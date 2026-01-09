resource "null_resource" "extrac_and_run" {
  provisioner "local-exec" {
    command = <<EOT
tar -zxvf test.tar.gz
sh start.sh
EOT
  }
}
