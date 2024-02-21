resource "aws_route53_record" "sonarQube" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.sonarQubeCredicorp.com"
  type    = "A"
  records = [aws_instance.Sonarqube.public_ip]
  ttl     = 300
  depends_on = [
    aws_instance.Sonarqube
  ]
}