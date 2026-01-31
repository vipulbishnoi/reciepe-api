variable "tf_state_bucket" {
  description = "The name of the S3 bucket to store Terraform state"
  default     = "devops-terraform-vipul1"

}
variable "tf_state_lock_table" {
  description = "The name of the DynamoDB table for Terraform state locking"
  default     = "devops-terraform-vipul-lock"

}
variable "project" {
  description = "Project name for tagging resources"
  default     = "reciepe-app-api"

}
variable "contact" {
  description = "Contact information for tagging resources"
  default     = "vipulbishnoi88@gmail.com"

}
