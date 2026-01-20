variable "sg-name" {}
variable "private-subnet-name1" {}
variable "private-subnet-name2" {}
variable "db-sg-id" {
  description = "Security group ID for the database"
  type        = string
}
variable "rds-username" {}
variable "rds-pwd" {}
variable "db-name" {}
variable "rds-name" {}