module "vpc_network" {
  source = "./modules/vpc"

  project     = "tst"
  region      = "tst"
  zone        = "tst"
  vpc_name    = "tst"
  subnet_name = "tst"
}
