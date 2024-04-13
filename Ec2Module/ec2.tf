resource "aws_instance" "instance1" {
    instance_type = "t2.micro"
    ami = data.aws_ami.windows.id  
    tags = {
      "Environment" = "prod"
    }
  
}

/*
resource "aws_ebs_volume" "myebs" {
  availability_zone = aws_instance.instabce1.availability_zone
  size = 8
  depends_on = [ aws_instance.instabce1 ]
}

resource "aws_volume_attachment" "attachment1" {
  instance_id = aws_instance.instabce1.id
  volume_id = aws_ebs_volume.myebs.id
  device_name = "/dev/sdh"
  
}*/

data "aws_ami" "windows" {
  most_recent = true
  owners = ["amazon"]
  filter {
    name = "name"
    values = ["Ubuntu_18.04-x86_64-SQL_2019_Express-2022.05.02"]
  }
}

output "amiid" {
  value = data.aws_ami.windows.id
}


  
