resource "aws_instance" "Sonarqube" {
  ami                    = "ami-0cf10cdf9fcd62d37" # free tier AMI image
  instance_type          = "t2.medium"
  user_data              = file("sonar_script.sh")
  vpc_security_group_ids = [aws_security_group.ec2.id]
  key_name               = "new-eks" # Existing ssh key 

  tags = {
    Name = "Sonarqube_Instance"
  }
}