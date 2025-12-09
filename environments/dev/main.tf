terraform {
  required_version = "~> 1.13.4"
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
  backend "local" {}
}

resource "null_resource" "hello_dev_exec" {
  provisioner "local-exec" {
    command = "echo Dev"
  }

  triggers = {
    always_run = timestamp()
  }
}
