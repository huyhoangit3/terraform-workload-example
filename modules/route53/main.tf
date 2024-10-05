
data "aws_route53_zone" "selected" {
  name         = "anhhoang.org"
  private_zone = false
}

resource "aws_route53_record" "cname_record" {
  zone_id = data.aws_route53_zone.selected.zone_id
  name    = "cname-record"
  type    = "CNAME"
  ttl     = 300
  records = [var.record]
}