resource "local_file" "arquivo" {
  content    = "Conteudo arquivo"
  filename   = "./arquivo.txt"
  depends_on = [local_file.outro_arquivo]
}

resource "local_file" "outro_arquivo" {
  content  = "Conteudo outro arquivo"
  filename = "./outro_arquivo.txt"
}

resource "local_file" "arquivo_for" {
  content  = "Conteudo arquivo - ${each.key}"
  filename = "./arquivo-${each.key}.txt"
  for_each = var.maquinas
}

resource "local_file" "arquivo_cont" {
  content  = "Conteudo arquivo - ${count.index}"
  filename = "./arquivo-${count.index}.txt"
  count    = var.contador
}

variable "contador" {
  default = 10
}

variable "maquinas" {
  default = ["vm01", "vm02", "vm03"]
  type    = set(string)
}
