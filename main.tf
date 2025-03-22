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
resource "null_resource" "ex" {
  triggers = {
    value = "A ex resource that does nothing!"
  }
}
