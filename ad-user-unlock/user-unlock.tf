#######################################
## KopiCloud AD API - Unlock AD User ##
#######################################

// Unlock AD User
resource "kopicloud_user_unlock_account" "test" {
  username = "guillermo"
}

// Unlocked AD User Result
output "OUTPUT_user_unlock_account" {
  description = "User Unlock"
  value = resource.kopicloud_user_unlock_account.test
}