#######################################
## KopiCloud AD API - Unlock AD User ##
#######################################

# User Name
resource "random_string" "random" {
  length  = 3
  special = false
  upper   = false
}

// Create Basic User
resource "kopicloud_user" "test" {
  username     = "labtestuser-${random_string.random.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random.result}"
  display_name = "Lab Test X User ${random_string.random.result}"
  description  = "Lab Test X User ${random_string.random.result}"

  change_password_next_logon = true
  password_never_expires     = true
}

// Unlock AD User
resource "kopicloud_user_unlock_account" "test" {
  username = "labtestuser-${random_string.random.result}"
}

// AD New User Result
output "OUTPUT_new_user" {
  description = "Created User"
  value       = resource.kopicloud_user.test
}

// Unlock AD User Result
/* output "OUTPUT_user_unlock_account" {
  description = "User Unlock"
  value = resource.kopicloud_user_unlock_account.test
} */