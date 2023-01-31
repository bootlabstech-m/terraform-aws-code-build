variable "project_name" {
  description = "Name of codebuild project"
  type        = string
}

variable "compute" {
  description = "Type of compute"
  type        = string
}

variable "image" {
  description = "Image "
  type        = string
}

variable "type" {
  description = "Type of environment"
  type        = string
}
variable "role_arn" {
  description = "Role ARN"
  type        = string
}

variable "region"{
  description="Region"
  type=string
}
variable "timeout"{
  description="Timeout"
  type=string
}
variable "bucket"{
  description="bucket"
  type=string
}