resource "aws_iam_role" "s3_iam" {
  name = "s3_iam_role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}
resource "aws_codebuild_project" "storage_bucket"{
name          = var.project_name
build_timeout = var.timeout
service_role  = aws_iam_role.s3_iam.arn

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = var.compute
    image                       = var.image
    type                        = var.type
  }

source {
   type            = var.codebuild_source_type
  }
}
