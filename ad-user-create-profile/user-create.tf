#######################################
## KopiCloud AD API - Create AD User ##
#######################################

# User Name
resource "random_string" "random" {
  length  = 3
  special = false
  upper   = false
}

// Create Basic User
resource "kopicloud_user" "test_1" {
  username     = "labtestuser-${random_string.random.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random.result}"
  display_name = "Lab Test X User ${random_string.random.result}"
  description  = "Lab Test X User ${random_string.random.result}"

  profile_path = "\\\\server\\profile\\user"
  profile_logon_script = "\\\\server\\script\\logon-user.cmd"
}

output "OUTPUT_new_user_1" {
  description = "Created User 1"
  value       = resource.kopicloud_user.test_1
}
