variable "ami_name" {}
variable "launch-template-name" {}
variable "web-sg-id" {
  description = "Security group ID for web tier instances"
  type        = string
}
variable "tg-name" {}
variable "iam-role" {}
variable "public-subnet-name1" {}
variable "public-subnet-name2" {}
variable "instance-profile-name" {}
variable "asg-name" {}