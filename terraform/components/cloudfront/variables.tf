#------------------------------------------------------------------------------ 
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com/
#
# date: Feb-2022
#------------------------------------------------------------------------------ 
variable "environment_domain" {
  description = "Something like web.stepwisemath.ai or sandbox.stepwisemath.ai. The base app domain"
  type        = string
}

variable "environment_namespace" {
  description = "Something like web-stepwisemath-mexico or sandbox-stepwisemath-mexico. The base app domain"
  type        = string
}

variable "resource_name" {
    description = "something like 'web-stepwisemath-mexico-storage'"
    type = string
}

variable "tags" {
  description = "collection of all tags to add to this resource. execting the combination of global + environment + resouce tags."
  type        = map(string)
  default     = {}
}

variable "aws_region" {
  description = "probably us-east-2. The region in which the origin S3 bucket was created."
  type = string
}