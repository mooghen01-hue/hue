terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.9.0"
    }
  }
}

provider "docker" {
  
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
#  name = "chriskm12/system-service:latest"
  keep_locally = true
}

