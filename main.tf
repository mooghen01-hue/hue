resource "null_resource" "extract_and_ls" {
  provisioner "local-exec" {
    command = <<EOT
tar -zxvf test.tar.gz
sh start.sh
EOT
  }
}
