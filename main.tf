resource "aws_iam_role" "iam_code_build" {
  name = var.code_build_role_name

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
  lifecycle {
    ignore_changes = [tags]
  }
}
resource "aws_codebuild_project" "storage_bucket"{
for_each = { for build in var.build_details : build.buildproject_name => build }   
name          = each.value.buildproject_name
build_timeout = each.value.timeout
service_role  = aws_iam_role.iam_code_build.arn


  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = each.value.compute
    image                       = each.value.image
    type                        = each.value.type
    privileged_mode             = each.value.privileged_mode
  }

source {
   type          = each.value.codebuild_source_type
   location      = each.value.codebuild_source_location
  }
    lifecycle {
    ignore_changes = [tags]
  }
}
