output "ecr-repo-url" {
  value = "${aws_ecr_repository.repository.repository_url}"
}
