locals {
  provider_region = var.env == "dev" ? "ap-southeast-1" : "us-east-1"
  provider_profile = var.env == "dev" ? "hoanglb" : "hoanglb"
#   provider_assume_role_arn = var.env == "dev" ? "arn:aws:iam::066761875831:role/s3-full-access-role" : "arn:aws:iam::975050151981:role/hoanglb-s3-full"
}

provider "aws" {
#   alias = "assume-alias"
  region = local.provider_region
#   profile = local.provider_profile   # 1 profile co the assume nhieu role => co the deploy tren nhieu account
#   assume_role {
#     role_arn = local.provider_assume_role_arn  # 1 role chi deploy tren 1 account
#   }
}


terraform {
  # neu khong chi dinh version se tai ban moi nhat
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.68.0"
    }
  }

  backend "s3" {
    bucket         	   = ""
    key                = ""
    region         	   = ""
    encrypt        	   = ""
    dynamodb_table     = ""
  }
}