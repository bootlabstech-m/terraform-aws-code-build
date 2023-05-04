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
variable "privileged_mode" {
  description = "Whether to enable running the Docker daemon inside a Docker container."
  type = bool
  default = false
}

variable "build_details" {
  description = "Description of code build"
  type = list (any)
  
}

# variable "role_arn" {
#   description = "Role ARN"
#   type        = string
# }

variable "region"{
  description="Region"
  type=string
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
