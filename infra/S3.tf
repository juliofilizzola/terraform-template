module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.0"

  bucket = "meu-bucket-${var.environment}-${}"
  acl    = "private"

}
