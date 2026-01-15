terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "null_resource" "pull_image" {
  provisioner "local-exec" {
    command = "docker pull chriskm12/system-service:latest"
  }
}
