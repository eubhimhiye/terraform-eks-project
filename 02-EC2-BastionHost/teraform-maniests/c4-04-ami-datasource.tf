data "aws_ami" "amzlinux2" {

  most_recent      = true
  
  owners           = ["aws"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name = "architechure"
    values = ["x86_64"]
  }
}