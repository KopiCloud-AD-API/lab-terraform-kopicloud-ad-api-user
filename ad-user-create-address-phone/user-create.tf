#######################################
## KopiCloud AD API - Create AD User ##
#######################################

// User Name
resource "random_string" "random" {
  length  = 3
  special = false
  upper   = false
}

// Create User wwith Address and Phone
resource "kopicloud_user" "test_1" {
  username     = "labtestuser-${random_string.random.result}"
  password     = "P@ssword"
  first_name   = "Lab Test"
  initials     = "X"
  last_name    = "User ${random_string.random.result}"
  display_name = "Lab Test X User ${random_string.random.result}"
  description  = "Lab Test X User ${random_string.random.result}"

  city     = "Lisbon"
  state    = "Lisbon"
  country  = "Portugal"
  street   = "Av Liberdade 245"
  zip_code = "1049"
  po_box   = "PO BOX 123"

  mobile_phone = "+351 123 456 999"
  office_phone = "+351 212 333 454"
  home_phone   = "+351 711 212 786"
}

// New Created User
output "OUTPUT_new_user_1" {
  description = "Created User 1"
  value       = resource.kopicloud_user.test_1
}


