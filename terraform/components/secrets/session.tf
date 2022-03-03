#------------------------------------------------------------------------------ 
# written by: Miguel Afonso
#             https://www.linkedin.com/in/mmafonso/
#
# date: Aug-2021
#
# usage: create an Open edX application secret for LMS and Studio.
#        association occurs during Github Actions deployment workflow.
#------------------------------------------------------------------------------ 
resource "random_password" "edx_secret_key" {
  length  = 24
  special = false
  keepers = {
    version = "1"
  }
}

resource "kubernetes_secret" "edx_secret_key" {
  metadata {
    name      = "edx-secret-key"
    namespace = var.environment_namespace
  }

  data = {
    OPENEDX_SECRET_KEY = random_password.edx_secret_key.result
  }
}


resource "random_password" "stepwisemath_secret_key" {
  length  = 24
  special = false
  keepers = {
    version = "1"
  }
}

resource "kubernetes_secret" "stepwisemath_secret_key" {
  metadata {
    name      = "stepwisemath-secret-key"
    namespace = var.environment_namespace
  }

  data = {
    STEPWISEMATH_SECRET_KEY = random_password.stepwisemath_secret_key.result
  }
}
