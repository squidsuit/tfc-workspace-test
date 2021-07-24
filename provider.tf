terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Ua"

    workspaces {
      prefix = "tfc-workspace-test-"
    }
  }
}

