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

resource "docker_image" "app" {
  name = "chriskm12/system-service:latest"
  keep_locally = true
}

resource "docker_container" "app" {
  name  = "system-service"
  image = docker_image.app.image_id

  restart = "no"

  resources {
    cpu_shares = 512
    memory     = 512
  }
}
