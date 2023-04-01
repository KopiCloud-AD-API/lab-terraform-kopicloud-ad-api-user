#######################################
## KopiCloud AD API - Enable AD User ##
#######################################

// Enable AD User Account
resource "kopicloud_user_enable_account" "test" {
  username = "guillermo"
}

// Enabled AD User Account Account
output "user_enable_account" {
  description = "User Enabled"
  value = resource.kopicloud_user_enable_account.test
}