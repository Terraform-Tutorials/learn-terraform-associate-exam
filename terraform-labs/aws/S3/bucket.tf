resource "aws_s3_bucket" "my-bucket-teste-labs" {
  bucket = "my-example-of-bucket-to-demonstrate"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}

