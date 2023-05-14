#######################################
## KopiCloud AD API - Rename AD User ##
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

// Rename AD User
resource "kopicloud_user_rename_account" "test" {
  depends_on = [ kopicloud_user.test ]

  username     = "labtestuser-${random_string.random.result}"
  new_username = "labtestuser-${random_string.random.result}R"
}

// AD New User Result
output "OUTPUT_new_user" {
  description = "Created User"
  value       = resource.kopicloud_user.test
}

// AD User Rename Result
output "OUTPUT_user_rename" {
  description = "Rename AD User"
  value = resource.kopicloud_user_rename_account.test
}