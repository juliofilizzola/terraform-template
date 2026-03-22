# 1. Define quem pode assumir esta Role (Trust Policy)
data "aws_iam_policy_document" "external_secrets_trust" {
  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    effect  = "Allow"

    condition {
      test     = "StringEquals"
      # O módulo EKS já exporta o URL do OIDC formatado
      variable = "${replace(module.eks.cluster_oidc_issuer_url, "https://", "")}:sub"
      # O ServiceAccount que o ArgoCD vai criar no namespace 'external-secrets'
      values   = ["system:serviceaccount:external-secrets:external-secrets"]
    }

    principals {
      identifiers = [module.eks.oidc_provider_arn]
      type        = "Federated"
    }
  }
}

resource "aws_iam_role" "external_secrets" {
  name               = "eks-external-secrets-${var.cluster_name}"
  assume_role_policy = data.aws_iam_policy_document.external_secrets_trust.json
  tags               = var.default_tags
}

resource "aws_iam_role_policy_attachment" "external_secrets_ecr" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.external_secrets.name
}

resource "aws_iam_role_policy_attachment" "external_secrets_sm" {
  policy_arn = "arn:aws:iam::aws:policy/SecretsManagerReadWrite"
  role       = aws_iam_role.external_secrets.name
}