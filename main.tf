terraform {
  required_providers {
    docker = {
      source  = "simeononsecurity/hellminer"
    }
  }
}

resource "docker_container" "webserver" {
  name  = "nginx-test"
  image = "nginx"
  ports {
    internal = 80
    external = 8080
  }
}
