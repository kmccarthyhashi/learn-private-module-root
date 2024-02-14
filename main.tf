provider "aws" {
  region = var.region
  access_key = "ASIAWQDBY64JQHPCUDPG"
  secret_key = "OsFzE4X1TmKnZgWsReO5HBDzRbHLbk79hJQEb6mK"
}

module "s3-webapp" {
  source  = "app.terraform.io/hashicorp-learn/s3-webapp/aws"
  name    = var.name
  region  = var.region
  prefix  = var.prefix
  version = "1.0.0"
}
