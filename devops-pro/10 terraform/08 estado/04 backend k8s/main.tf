terraform {
  backend "kubernetes" {
  }
}

resource "local_file" "arquivo_local" {
  filename = "arquivo.txt"
  content  = "Conteúdo novo"

  lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes = [
      tags
    ]
    replace_triggered_by = [local_file.novo_arquivo]
    precondition {
      condition     = var.region == "nyc1" || var.region == "nyc3"
      error_message = "A região precisa ser NYC1 ou NYC3"
    }
  }
}

resource "local_file" "novo_arquivo" {
  filename = "novo_arquivo.txt"
  content  = "Novo arquivo."
}

variable "region" {
  default = "nyc1"
}
