######################################
## KopiCloud AD API - List AD Users ##
######################################

# OU Name
resource "random_string" "random1" {
  length  = 4
  special = false
  upper   = false
}

# Create a OU
resource "kopicloud_ou" "test_ou" {
  ou_destination_path = var.ou_path
  ou_name             = "kopicloud-labtest-${random_string.random1.result}"
  protected           = false
  description         = "OU for KopiCloud Lab Test"
}

# Returns Created OU
//output "OUTPUT_created_ou_1" {
//  description = "Created OU #1"
//  value       = resource.kopicloud_ou.test_ou
//}

//////////////////////////////////////

# User Name
resource "random_string" "random2" {
  length  = 3
  special = false
  upper   = false
}

// Create Basic User
resource "kopicloud_user" "test_1" {
  depends_on = [ kopicloud_ou.test_ou ]

  username     = "labtestuser-${random_string.random2.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random2.result}"
  display_name = "Lab Test X User ${random_string.random2.result}"
  description  = "Lab Test X User ${random_string.random2.result}"
  ou_path      = kopicloud_ou.test_ou.ou_path
}

//output "OUTPUT_new_user_1" {
//  description = "Created User 1"
//  value       = resource.kopicloud_user.test_1
//}

//////////////////////////////////////

# Get All AD Users Inside an OU
data "kopicloud_user_list" "test_ou" {
  depends_on = [ kopicloud_ou.test_ou, kopicloud_user.test_1 ]

  ou_path = kopicloud_ou.test_ou.ou_path
}

# Returns All AD Users Inside an OU
output "OUTPUT_kopicloud_all_users_ou" {
  description = "All Existing AD Users inside an OU"
  value       = data.kopicloud_user_list.test_ou
}

