#------------------------------------------------------------------------------ 
# written by: Miguel Afonso
#             https://www.linkedin.com/in/mmafonso/
#
# date: Aug-2021
#
# usage: create an Open edX application secret for the Stepwise API
#        for future use.
#------------------------------------------------------------------------------ 
resource "random_password" "turnthebus_api_key" {
  length  = 40
  special = false
  keepers = {
    version = "1"
  }
}

resource "kubernetes_secret" "turnthebus_api" {
  metadata {
    name      = "turnthebus-api"
    namespace = var.environment_namespace
  }

  data = {
    SPONSORS_PLATFORM_USER_API_KEY = random_password.turnthebus_api_key.result
  }
}

