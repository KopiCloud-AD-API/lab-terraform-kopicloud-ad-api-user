# Disable AD User Account
resource "kopicloud_user_disable_account" "test" {
  username = "guillermo"
}

# Disabled AD User Account Result
output "user_disable_account" {
  description = "User Disabled"
  value = resource.kopicloud_user_disable_account.test
}