output "ecr-repo-url" {
  value = "${aws_ecr_repository.myapp.repository_url}"
}
