provider "aws" {
  region = "us-east-1" 
}

resource "aws_instance" "terraform_demo" {
  ami = path.module
  instance_type = "t2.micro"
  tags = {
    "Name" = "App-AWS"
    "Env" = "Dev"
  }

  user_data = <<EOF
  #!/bin/bash
  touch /dev/log.txt
EOF
}
