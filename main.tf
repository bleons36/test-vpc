//--------------------------------------------------------------------
// Modules
module "network" {
  source  = "app.terraform.io/sulee/network/aws"
  version = "1.0.0"

  azs = "ap-northeast-2a"
  cidr = "10.10.0.0/16"
}
