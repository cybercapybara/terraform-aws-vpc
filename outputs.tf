output "id" {
  description = "ID of the VPC."
  value       = aws_vpc.this.id
}

output "arn" {
  description = "ARN of the VPC."
  value       = aws_vpc.this.arn
}

output "cidr_block" {
  description = "IPv4 CIDR block of the VPC."
  value       = aws_vpc.this.cidr_block
}

output "default_security_group_id" {
  description = "ID of the default security group created with the VPC."
  value       = aws_vpc.this.default_security_group_id
}

output "default_route_table_id" {
  description = "ID of the default route table created with the VPC."
  value       = aws_vpc.this.default_route_table_id
}

output "main_route_table_id" {
  description = "ID of the main route table associated with the VPC."
  value       = aws_vpc.this.main_route_table_id
}
