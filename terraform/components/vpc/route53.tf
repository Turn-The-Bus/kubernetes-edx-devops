#------------------------------------------------------------------------------ 
# written by: Lawrence McDaniel
#             https://lawrencemcdaniel.com/
#
# date: Aug-2021
#
# usage: create a VPC to contain all Open edX backend resources.
#------------------------------------------------------------------------------ 

#   turnthebus.org
#   un-comment this if the root_domain is managed in route53
# -----------------------------------------------------------------------------
#data "aws_route53_zone" "root_domain" {
#  name = var.root_domain
#}


# [environment].turnthebus.org
# probably app.turnthebus.org or sandbox.turnthebus.org
# -----------------------------------------------------------------------------
data "aws_route53_zone" "environment" {
  name = var.environment_domain
}

# -----------------------------------------------------------------------------
# Terraform-managed resources begin here.
# -----------------------------------------------------------------------------

# mcdaniel: i moved these to their respective stacks.