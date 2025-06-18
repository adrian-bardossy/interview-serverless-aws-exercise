module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.11.0"

  bucket        = local.bucket_name
  force_destroy = true
}

