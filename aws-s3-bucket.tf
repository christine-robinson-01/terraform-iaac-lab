module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"

  create_bucket = true

  bucket = "terraform-iaac-lab-s3-bucket"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}
