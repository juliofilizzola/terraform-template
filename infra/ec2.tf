resource "aws_ec2_tag" "public_elb" {
  for_each = toset(var.public_subnets)

  resource_id = each.value
  key         = "kubernetes.io/role/elb"
  value       = "1"

  depends_on = [module.eks]
}

resource "aws_ec2_tag" "public_cluster" {
  for_each = toset(var.public_subnets)

  resource_id = each.value
  key         = "kubernetes.io/cluster/${var.cluster_name}"
  value       = "shared"

  depends_on = [module.eks]
}

resource "aws_ec2_tag" "private_internal_elb" {
  for_each = toset(var.private_subnets)

  resource_id = each.value
  key         = "kubernetes.io/role/internal-elb"
  value       = "1"

  depends_on = [module.eks]
}

resource "aws_ec2_tag" "private_cluster" {
  for_each = toset(var.private_subnets)

  resource_id = each.value
  key         = "kubernetes.io/cluster/${var.cluster_name}"
  value       = "shared"

  depends_on = [module.eks]
}

