//--------------------------------------------------------------------
// Modules
module "network" {
  source  = "app.terraform.io/sulee/network/aws"
  version = "1.0.0"
  name = "test-vpc"
  azs = ["ap-northeast-2a","ap-northeast-2b","ap-northeast-2c"]
  cidr = "10.10.0.0/16"
}
