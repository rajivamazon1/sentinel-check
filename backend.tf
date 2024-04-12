terraform {
  backend "s3" {
    bucket = "myrmtbucket-abc-rkm"
    key = "rajiv/terraform.tfstates"
    region = "us-east-1"
    dynamodb_table = "mytable_state_lock"
  }
}

