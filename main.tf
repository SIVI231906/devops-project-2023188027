provider "aws" {
  region = "us-east-1" # Change this to your preferred region
  access_key = "9840493219" # Replace with your Access Key
  secret_key = "9840493219" # Replace with your Secret Key
}

resource "aws_instance" "nginx_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Nginx-Server"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras enable nginx1",
      "sudo yum install nginx -y",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("C:/Users/tsiva/.ssh/id_rsa")
    #public_key = file("C:/Users/tsiva/.ssh/id_rsa.pub")
    host     = self.public_ip
  }
}

output "public_ip" {
  value = aws_instance.nginx_server.public_ip
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.0" # Replace with a stable version
    }
  }
}
