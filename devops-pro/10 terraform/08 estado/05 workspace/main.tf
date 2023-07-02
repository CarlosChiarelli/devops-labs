resource "local_file" "arquivo_local" {
  filename = "arquivo-${terraform.workspace}.txt"
  content  = var.conteudo
}

variable "conteudo" {
  type        = string
  description = "Conteúdo do arquivo"
}

variable "nome_arquivo" {
  type        = string
  description = "Conteúdo do arquivo"
}
