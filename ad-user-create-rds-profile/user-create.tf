#######################################
## KopiCloud AD API - Create AD User ##
#######################################

// User Name #1
resource "random_string" "random1" {
  length  = 3
  special = false
  upper   = false
}

// Create RDS User #1
resource "kopicloud_user" "test_1" {
  username     = "labtestuser-${random_string.random1.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random1.result}"
  display_name = "Lab Test X User ${random_string.random1.result}"
  description  = "Lab Test X User ${random_string.random1.result}"

  rds_allow_logon = true
  rds_profile_path = "\\\\rdsserver\\userprofile1"

  rds_connect_drive = false
  rds_home_folder_path = "c:\\rdsserver\\homefolder1"
}

output "OUTPUT_new_user_1" {
  description = "Created User 1"
  value       = resource.kopicloud_user.test_1
}

//////////////////////////

# User Name #2
resource "random_string" "random2" {
  length  = 3
  special = false
  upper   = false
}

// Create RDS User #2
resource "kopicloud_user" "test_2" {
  username     = "labtestuser-${random_string.random2.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random2.result}"
  display_name = "Lab Test X User ${random_string.random2.result}"
  description  = "Lab Test X User ${random_string.random2.result}"

  rds_allow_logon = false
  rds_profile_path = "\\\\rdsserver\\userprofile2"

  rds_connect_drive = true
  rds_home_folder_drive = "R:"
  rds_home_folder_path = "\\\\rdsserver\\homefolder2"
}

output "OUTPUT_new_user_2" {
  description = "Created User 2"
  value       = resource.kopicloud_user.test_2
}
