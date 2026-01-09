resource "null_resource" "ls_example" {
  provisioner "local-exec" {
    command = "ls"
  }
}
