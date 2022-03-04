#------------------------------------------------------------------------------ 
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com/
#
# date: Feb-2022
#------------------------------------------------------------------------------ 
variable "environment_domain" {
  description = "Something like app.turnthebus.org or sandbox.turnthebus.org. The base app domain"
  type        = string
}

variable "environment_namespace" {
  description = "Something like web-turnthebus-mumbai or sandbox-turnthebus-mumbai. The base app domain"
  type        = string
}

variable "resource_name" {
    description = "something like 'web-turnthebus-mumbai-storage'"
    type = string
}

variable "tags" {
  description = "collection of all tags to add to this resource. execting the combination of global + environment + resouce tags."
  type        = map(string)
  default     = {}
}

variable "aws_region" {
  description = "probably ap-south-1. The region in which the origin S3 bucket was created."
  type = string
}