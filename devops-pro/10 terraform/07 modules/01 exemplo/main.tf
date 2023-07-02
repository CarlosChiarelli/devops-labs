# module "pets01" {
#   source          = "./modules/pets"
#   prefixo_arquivo = "teste-nome-01"
#   depends_on      = [module.pets02]
# }

# module "pets02" {
#   source          = "./modules/pets"
#   prefixo_arquivo = "teste-nome-02"
# }

# module "pets03" {
#   source          = "./modules/pets"
#   prefixo_arquivo = "teste-nome-03-id-${count.index}"
#   count           = 2
# }

module "pets04" {
  source          = "./modules/pets"
  prefixo_arquivo = "teste-nome-${each.key}"
  for_each        = toset(["pre01", "pre02", "pre03"])
}
