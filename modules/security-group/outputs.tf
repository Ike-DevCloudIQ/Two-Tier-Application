output "alb_security_group_id" {
  description = "ID of the ALB security group"
  value       = aws_security_group.alb-sg.id
}

output "web_security_group_id" {
  description = "ID of the web tier security group"
  value       = aws_security_group.web-tier-sg.id
}

output "database_security_group_id" {
  description = "ID of the database security group"
  value       = aws_security_group.database-sg.id
}