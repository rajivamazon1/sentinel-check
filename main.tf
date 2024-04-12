module "ec2instances" {
    source = "./Ec2Module"
  
}

module "s3bucket" {
  source = "./S3Module"
}