variable "location" {
  description = "variavel que indica a regiao onde os recursos estao sendo criados"
  type = string
  default = "Brazil South"
}

variable "account_tier" {
  description = "Tier da Storage Account no Azure"
  type = string
  default = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicacao de dados no Azure"
  type = string
  default = "LRS"
}