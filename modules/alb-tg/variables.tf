variable "public-subnet-name1" {}
variable "public-subnet-name2" {}
variable "alb-sg-id" {
  description = "Security group ID for the ALB"
  type        = string
}
variable "alb-name" {}
variable "tg-name" {}
variable "vpc-name" {}