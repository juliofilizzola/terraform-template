resource "aws_route53_zone" "private" {
  name = var.route53_zone_name
  vpc {
    vpc_id = module.vpc.vpc_id
  }
  comment = "Zona privada para o cluster EKS"
}

output "route53_zone_id" {
  value = aws_route53_zone.private.zone_id
}
