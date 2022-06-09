terraform {
  backend "remote"{
      hostname = "app.terraform.io"
      organization = "ilumia"

      workspaces{
          name = "aws-ilumia"
      }
  }
}