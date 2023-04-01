#######################################
## KopiCloud AD API - Create AD User ##
#######################################

// User Name #1
resource "random_string" "random1" {
  length  = 3
  special = false
  upper   = false
}

// Create Manager User
resource "kopicloud_user" "test_1" {
  username     = "labtestuser-${random_string.random1.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random1.result}"
  display_name = "Lab Test X User ${random_string.random1.result}"
  description  = "Lab Test X User ${random_string.random1.result}"

  company       = "KopiCloud Labs"
  department    = "Laboratory"
  email_address = "labtestuser-${random_string.random1.result}@kopicloud.net"
  office        = "Level 3, Office 67"
  job_title     = "Lab Engineer"
}

// New Created Manager User
output "OUTPUT_new_user_1" {
  description = "Created User 1"
  value       = resource.kopicloud_user.test_1
}

////////////////////////////////////////////////////

// User Name #2
resource "random_string" "random2" {
  length  = 3
  special = false
  upper   = false
}

// Create Employee User
resource "kopicloud_user" "test_2" {
  depends_on = [kopicloud_user.test_1]

  username     = "labtestuser-${random_string.random2.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random2.result}"
  display_name = "Lab Test X User ${random_string.random2.result}"
  description  = "Lab Test X User ${random_string.random2.result}"

  company       = "KopiCloud Labs"
  department    = "Laboratory"
  email_address = "labtestuser-${random_string.random2.result}@kopicloud.net"
  office        = "Level 3, Office 68"
  job_title     = "Lab Engineer"
  manager       = resource.kopicloud_user.test_1.username
}

// New Created Employee User
output "OUTPUT_new_user_2" {
  description = "Created User 2"
  value       = resource.kopicloud_user.test_2
}
