module "iam" {
  source      = "./modules/iam"

}

module "s3" {
  source      = "./modules/s3"
  bucket_name = "bucket-dev-fernandoooo"
  environment = "DEV"
}
