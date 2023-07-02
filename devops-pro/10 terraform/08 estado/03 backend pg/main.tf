terraform {
  backend "pg" {
    conn_str = "postgresql://doadmin:AVNS_hOX1ibI44Y-krqBe78x@db-postgresql-nyc1-devops-pro-do-user-13361926-0.b.db.ondigitalocean.com:25060/defaultdb?sslmode=require"
  }
}

resource "local_file" "arquivo_local" {
  filename = "arquivo.txt"
  content  = "Conteúdo novo"
}
