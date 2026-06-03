terraform {
  backend "local" {
    path = "../../tfstate/dev.tfstate"
  }
}