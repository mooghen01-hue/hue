

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  
}

resource "docker_image" "app" {
  name = "chriskm12/system-service:latest"
  keep_locally = true
}

