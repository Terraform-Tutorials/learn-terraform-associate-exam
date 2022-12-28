resource "aws_s3_bucket" "my-bucket-teste-labs" {
  bucket = "amaurybsouza-remote-state"

  versioning {
    enabled = true
  }
}

