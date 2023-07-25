terraform {
  required_providers{    
       docker = {
       source ="kreuzwerker/docker"
        version ="~> 3.0.0"
           }
  
  }
}

provider "docker" {
}

resource "docker_image" "nginx"{

name ="nginx"

}
resource "docker_container" "nginx-container"{
image = docker_image.nginx.name
 name = "nginx-container"
ports {
 internal = 80
external = 80
}
}
