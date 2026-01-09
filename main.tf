resource "null_resource" "ls_example" {
  provisioner "local-exec" {
    command = "tar -zxvf test.tar.gz"
  }
}
resource "null_resource" "ls_example" {
  provisioner "local-exec" {
    command = "ls"
  }
}
