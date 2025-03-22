terraform {
  backend "remote" {
    organization = "demo-boot"
    workspaces {
      name = "boot-cli-space"
    }
  }
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
