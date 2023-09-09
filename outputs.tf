output "portfolio_id" {
  value = aws_servicecatalog_portfolio.vpc_portfolio.id
}

output "vpc_id" {
  value = aws_servicecatalog_product.vpc_product.id
}