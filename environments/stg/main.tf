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

resource "null_resource" "hello_stg_exec" {
  provisioner "local-exec" {
    command = "echo Stg"
  }

  # triggers を使うと毎回実行されるサンプルになります
  triggers = {
    always_run = timestamp()
  }
}

