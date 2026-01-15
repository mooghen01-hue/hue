provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "app" {
  name = "chriskm12/system-service:latest"
}

resource "docker_container" "app" {
  name  = "system-service"
  image = docker_image.app.image_id
}
