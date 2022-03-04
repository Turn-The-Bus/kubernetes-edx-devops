#------------------------------------------------------------------------------ 
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com/
#
# date: Feb-2022
#
# usage: create an EC2 instance with ssh access and a DNS record.
#------------------------------------------------------------------------------ 
variable "vpc_id" {
  description = "VPC where the cluster and workers will be deployed."
  type        = string
}
variable "availability_zone" {
  description = "AZ for the EC2 instance"
  type        = string
  default     = ""
}
variable "ingress_cidr_blocks" {
  description = "ingress_cidr_blocks"
  type        = list(any)
  default     = []
}
variable "security_group_name_prefix" {
  description = "security_group_name_prefix"
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "subnet_id"
  type        = string
}
variable "tags" {
  description = "tags"
  type        = any
  default     = {}
}
variable "environment_domain" {
  description = "something like app.turnthebus.org or sandbox.turnthebus.org. Base app domain (route53 zone) for the default cluster ingress"
  type        = string
}

variable "environment_namespace" {
  description = "something like web-turnthebus-mumbai or sandbox-turnthebus-mumbai. Base app domain (route53 zone) for the default cluster ingress"
  type        = string
}

variable "platform_name" {
  description = "probably turnthebus"
  type        = string
}
variable "platform_region" {
  description = "probably mumbai"
  type        = string
}
variable "environment" {
  description = "probably either web or sandbox"
  type        = string
}

variable "ec2_ssh_key_name" {
  description = "probably turnthebus-ohio. The name of the EC2 keypair to use for ssh access to the instance."
  type        = string
}