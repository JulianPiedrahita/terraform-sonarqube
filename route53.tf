resource "aws_route53_record" "sonarQube" {
  name    = "sonar"
  type    = "A"
  zone_id = data.aws_route53_zone.selected.zone_id
  records = [aws_instance.Sonarqube.public_ip]
  ttl     = 300
  depends_on = [
    aws_instance.Sonarqube
  ]
}
