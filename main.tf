# Set the required provider and versions
terraform {
  required_providers {
    # We recommend pinning to the specific version of the Docker Provider you're using
    # since new versions are released frequently
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.9.0"
    }
  }
}

# Configure the docker provider
provider "docker" {
}

# Create a docker image resource
# -> docker pull nginx:latest
resource "docker_image" "hellminer" {
  name         = "simeononsecurity/hellminer:latest"
  keep_locally = true
}
# Create a docker container resource
# -> same as 'docker run --name nginx -p8080:80 -d nginx:latest'
# -> same as 'docker run -itd -e STRATUM="stratum+ssl" -e URL="na.luckpool.net" -e PORT=3958 -e WALLET="R9SWmsN6Dq1ocqkeB9GUVwP4RGMXt2mNLf" -e WORKER="SimeononSecurityMadeMe" -e CPU=2 -e API_PORT=8080 -e API_PASS="" -e ARCH_TYPE="hellminer_linux64.tar.gz" --name verusminer simeononsecurity/hellminer:latest'

resource "docker_container" "hellminer" {
  name    = "verusminer"
  image   = "simeononsecurity/hellminer:latest"

  ports {
    external = 8080
    internal = 80
  }
}
