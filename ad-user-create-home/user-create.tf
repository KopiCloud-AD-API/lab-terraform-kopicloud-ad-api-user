#######################################
## KopiCloud AD API - Create AD User ##
#######################################

// User Name #1
resource "random_string" "random1" {
  length  = 3
  special = false
  upper   = false
}

// Create User #1 with home_folder_path
resource "kopicloud_user" "test_1" {
  username     = "labtestuser-${random_string.random1.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random1.result}"
  display_name = "Lab Test X User ${random_string.random1.result}"
  description  = "Lab Test X User ${random_string.random1.result}"

  home_folder_path = "\\\\server\\home"
}

// New Created User #1
output "OUTPUT_new_user_1" {
  description = "Created User 1"
  value       = resource.kopicloud_user.test_1
}

/////////////////////////////////////////////////////////////////

// User Name #2
resource "random_string" "random2" {
  length  = 3
  special = false
  upper   = false
}

// Create User #2 with home_folder
resource "kopicloud_user" "test_2" {
  username     = "labtestuser-${random_string.random2.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "Z"
  last_name    = "User ${random_string.random2.result}"
  display_name = "Lab Test Z User ${random_string.random2.result}"
  description  = "Lab Test Z User ${random_string.random2.result}"

  home_folder_directory = "\\\\server\\homedir"
  home_folder_drive = "X:"
}

// New Created User #2
output "OUTPUT_new_user_2" {
  description = "Created User 2"
  value       = resource.kopicloud_user.test_2
}

/////////////////////////////////////////////////////////////////

// User Name #3
resource "random_string" "random3" {
  length  = 3
  special = false
  upper   = false
}

// Create User #3 - Multiple Values
resource "kopicloud_user" "test_3" {
  username     = "labtestuser-${random_string.random3.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "Z"
  last_name    = "User ${random_string.random3.result}"
  display_name = "Lab Test Z User ${random_string.random3.result}"
  description  = "Lab Test Z User ${random_string.random3.result}"

  home_folder_drive = "X:"
  //home_folder_directory = "\\\\server\\homedir"
  //home_folder_path = "\\\\server\\home"
}

// New Created User #3
output "OUTPUT_new_user_3" {
  description = "Created User 3"
  value       = resource.kopicloud_user.test_3
}
