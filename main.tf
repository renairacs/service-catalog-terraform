resource "aws_servicecatalog_portfolio" "vpc_portfolio" {
  name          = "VPC Automation Portfolio"
  description   = "Portfolio for automating VPC creation"
  provider_name = "organization"
}

resource "aws_servicecatalog_product" "vpc_product" {
  name        = "VPC Product"
  owner       = "Renaira"
  description = "Product for creating VPCs"
  type        = "CLOUD_FORMATION_TEMPLATE"

  provisioning_artifact_parameters {
    template_url = "https://service-catalog-test-template.s3.us-west-2.amazonaws.com/vpc-template.yaml"
    type         = "CLOUD_FORMATION_TEMPLATE"
  }

  tags = {
    Terraform = "true"
  }
}

resource "aws_servicecatalog_product_portfolio_association" "vpc_portfolio_association" {
  portfolio_id = aws_servicecatalog_portfolio.vpc_portfolio.id
  product_id   = aws_servicecatalog_product.vpc_product.id
}