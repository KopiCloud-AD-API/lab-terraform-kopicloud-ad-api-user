# Enable AD User Account
resource "kopicloud_user_enable_account" "test" {
  username = "guillermo"
}

# Enabled AD User Account Result
output "user_enable_account" {
  description = "AD User Enabled"
  value = resource.kopicloud_user_enable_account.test
}