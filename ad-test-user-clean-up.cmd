@echo off
cls
echo Clean up Logs
del /q ad*.txt

echo -----------------------------

echo AD User Create Address Phone
del /q "ad-user-create-address-phone\.terraform.lock.hcl"
del /q "ad-user-create-address-phone\terraform.tfstate.*"
rmdir /s /q "ad-user-create-address-phone\.terraform"

echo AD User Create Basic
del /q "ad-user-create-basic\.terraform.lock.hcl"
del /q "ad-user-create-basic\terraform.tfstate.*"
rmdir /s /q "ad-user-create-basic\.terraform"

echo AD User Create Business
del /q "ad-user-create-business\.terraform.lock.hcl"
del /q "ad-user-create-business\terraform.tfstate.*"
rmdir /s /q "ad-user-create-business\.terraform"

echo AD User Create Home
del /q "ad-user-create-home\.terraform.lock.hcl"
del /q "ad-user-create-home\terraform.tfstate.*"
rmdir /s /q "ad-user-create-home\.terraform"

echo AD User Create Profile
del /q "ad-user-create-profile\.terraform.lock.hcl"
del /q "ad-user-create-profile\terraform.tfstate.*"
rmdir /s /q "ad-user-create-profile\.terraform"

echo AD User Create RDS Profile
del /q "ad-user-create-rds-profile\.terraform.lock.hcl"
del /q "ad-user-create-rds-profile\terraform.tfstate.*"
rmdir /s /q "ad-user-create-rds-profile\.terraform"

echo AD User Disable
del /q "ad-user-disable\.terraform.lock.hcl"
del /q "ad-user-disable\terraform.tfstate.*"
rmdir /s /q "ad-user-disable\.terraform"

echo AD User Enable
del /q "ad-user-enable\.terraform.lock.hcl"
del /q "ad-user-enable\terraform.tfstate.*"
rmdir /s /q "ad-user-enable\.terraform"

echo AD User List #1
del /q "ad-user-list-1\.terraform.lock.hcl"
del /q "ad-user-list-1\terraform.tfstate.*"
rmdir /s /q "ad-user-list-1\.terraform"

echo AD User List #2
del /q "ad-user-list-2\.terraform.lock.hcl"
del /q "ad-user-list-2\terraform.tfstate.*"
rmdir /s /q "ad-user-list-2\.terraform"

echo AD User Rename
del /q "ad-user-rename\.terraform.lock.hcl"
del /q "ad-user-rename\terraform.tfstate.*"
rmdir /s /q "ad-user-rename\.terraform"

echo AD User Reset
del /q "ad-user-reset\.terraform.lock.hcl"
del /q "ad-user-reset\terraform.tfstate.*"
rmdir /s /q "ad-user-reset\.terraform"

echo AD User Unlock
del /q "ad-user-unlock\.terraform.lock.hcl"
del /q "ad-user-unlock\terraform.tfstate.*"
rmdir /s /q "ad-user-unlock\.terraform"

echo -----------------------------

pause