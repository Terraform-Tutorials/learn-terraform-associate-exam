resource "aws_s3_bucket" "my-bucket-teste-labs" {
  bucket = "my-example-of-bucket-to-remote-state"

  versioning {
    enabled = true
}
}




