//--------------------------------------------------------------------
// Modules
provider "aws" {
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
  region     = "ap-northeast-2"
}
module "network" {
  source  = "app.terraform.io/sulee/network/aws"
  version = "1.0.0"
  name                    = "test-vpc"
  cidr                    = "10.10.0.0/16"
  azs                     = ["ap-northeast-2a", "ap-northeast-2b", "ap-northeast-2c"]
}

#resource "aws_instance" "example" {
#  ami           = "ami-00ba43a774eb5870b"
#  instance_type = "t2.micro"
#}
