

// Reset Password for AD User
resource "kopicloud_user_password_reset" "test" {
  username     = "carlos"
  new_password = "Sw3d1shH0us3"

  change_password_next_logon = false
}

// Password Reset for AD User Result
output "user_password_reset" {
  description = "Password Reset for User"
  value = resource.kopicloud_user_password_reset.test
}