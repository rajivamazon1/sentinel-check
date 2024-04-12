resource "aws_s3_bucket" "testbkt-1" {
  bucket = "myawsbkt-rkm-pmn"
  tags = {
    "Name" = "bucket1"
  }
}