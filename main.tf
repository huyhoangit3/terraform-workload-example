
module "my_s3_bucket" {
  source = "./modules/s3"

  env = var.env
  bucket_name = var.bucket_name
}

module "my_record" {
  source = "./modules/route53"
  record = var.record
}