# variable "project_name" {
#   description = "Name of codebuild project"
#   type        = string
# }

# variable "compute" {
#   description = "Type of compute"
#   type        = string
# }

# variable "image" {
#   description = "Image"
#   type        = string
# }

# variable "type" {
#   description = "Type of environment"
#   type        = string
# }
variable "build_details" {
  description = "Description of code build"
  type = list (any)
  
}
variable "role_arn" {
  description = "Role ARN"
  type        = string
}

variable "region"{
  description = "Region"
  type = string
}
variable "code_build_role_name"{
  description="code_build_role_name"
  type = string
}

# variable "timeout"{
#   description="Timeout"
#   type=string
# }

# variable "codebuild_source_type"{
#   description="codebuild_source_type"
#   type=string
# }
# variable "codebuild_source_location" {
#   description = "Name of codebuild location"
#   type        = string
# }
