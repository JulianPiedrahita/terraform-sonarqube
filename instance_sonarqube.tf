resource "aws_instance" "Sonarqube" {
  ami                    = "ami-0557a15b87f6559cf" # free tier AMI image
  instance_type          = "t2.medium"
  user_data              = file("sonar_script.sh")
  vpc_security_group_ids = [aws_security_group.ec2.id]
  key_name               = "new-eks" # Existing ssh key 

  tags = {
    Name = "Sonarqube_Instance"
  }
}