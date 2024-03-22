provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Red-Hat-Server" {
  count         = 1
  ami           = "ami-0fe630eb857a6ec83"
  instance_type = "t2.medium"
  key_name      = "SazidAkeypair"
  tags = {
    Name = "RHEL-Server"
  }
}
