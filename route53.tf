resource "aws_route53_record" "sonarQube" {
  name    = "www.sonarQubeCredicorp.com"
  type    = "A"
  zone_id = 
  records = [aws_instance.Sonarqube.public_ip]
  ttl     = 300
  depends_on = [
    aws_instance.Sonarqube
  ]
}
