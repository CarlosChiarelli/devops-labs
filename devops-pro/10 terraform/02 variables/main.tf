resource "local_file" "foo" {
  content  = "O valor é ${var.conteudo[0]} - ${var.conteudo[1]} - ${var.conteudo[2]}"
  filename = "./arquivo.txt"
}

variable "conteudo" {
  default     = ["nyc1", "media", false]
  type        = tuple([string, string, bool])
  description = "conteúdo que vai para o arquivo"
}
