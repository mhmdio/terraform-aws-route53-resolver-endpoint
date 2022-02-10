output "arn" {
  description = "The ARN of the Route 53 Resolver endpoint."
  value       = aws_route53_resolver_endpoint.this.arn
}

output "id" {
  description = "The ID of the Route 53 Resolver endpoint."
  value       = aws_route53_resolver_endpoint.this.id
}

output "ip_addresses" {
  description = "IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints)"
  value       = [for obj in aws_route53_resolver_endpoint.this.ip_address : obj.ip]
}
