resource "random_id" "suffix" {
  byte_length = 2
}

locals {
  resource_group_name = "rg-casopractico2"
  location            = "norwayeast"
  common_name         = "unir"
  acr_name            = "acrunir${random_id.suffix.hex}cp2"
  common_tags = {
    environment = "casopractico2"
  }
}