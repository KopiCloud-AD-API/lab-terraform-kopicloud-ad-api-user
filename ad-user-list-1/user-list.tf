######################################
## KopiCloud AD API - List AD Users ##
######################################

# Get All AD Users
data "kopicloud_user_list" "test_all" { }

# Returns All AD Users
output "OUTPUT_kopicloud_all_users" {
  description = "All Existing AD Users"
  value       = data.kopicloud_user_list.test_all
}
