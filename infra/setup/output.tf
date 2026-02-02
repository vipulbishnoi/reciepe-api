output "cd_user_access_key_id" {
  value       = aws_iam_access_key.cd.id
  description = "Access Key ID for the CD IAM User"

}
output "cd_user_access_key_secret" {
  value       = aws_iam_access_key.cd.secret
  description = "Secret Access Key for the CD IAM User"
  sensitive   = true
}
output "ecr_repo_app" {
  value       = aws_ecr_repository.app.repository_url
  description = "ECR Repository url for Application image"

}
output "ecr_repo_proxy" {
  value       = aws_ecr_repository.proxy.repository_url
  description = "ECR Repository url for proxy image"

}
