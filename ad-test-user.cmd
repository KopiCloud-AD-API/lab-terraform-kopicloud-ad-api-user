@echo off

echo -----------------------------

echo Test Running [AD User Address Phone Create] - Create
cd ad-user-create-address-phone
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-create-address-phone-result.txt
echo ----------------------------- >> ..\ad-user-create-address-phone-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-create-address-phone-result.txt
echo Test Running [AD User Address Phone Create] - Destroy
echo ----------------------------- >> ..\ad-user-create-address-phone-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-create-address-phone-result.txt
cd ..

echo Test Running [AD User Basic Create] - Create
cd ad-user-create-basic
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-create-basic-result.txt
echo ----------------------------- >> ..\ad-user-create-basic-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-create-basic-result.txt
echo Test Running [AD User Basic Create] - Destroy
echo ----------------------------- >> ..\ad-user-create-basic-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-create-basic-result.txt
cd ..

echo Test Running [AD User Business Create] - Create
cd ad-user-create-business
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-create-business-result.txt
echo ----------------------------- >> ..\ad-user-create-business-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-create-business-result.txt
echo Test Running [AD User Business Create] - Destroy
echo ----------------------------- >> ..\ad-user-create-business-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-create-business-result.txt
cd ..

echo Test Running [AD User Home Create] - Create
cd ad-user-create-home
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-create-home-result.txt
echo ----------------------------- >> ..\ad-user-create-home-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-create-home-result.txt
echo Test Running [AD User Home Create] - Destroy
echo ----------------------------- >> ..\ad-user-create-home-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-create-home-result.txt
cd ..

echo Test Running [AD User Profile Create] - Create
cd ad-user-create-profile
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-create-profile-result.txt
echo ----------------------------- >> ..\ad-user-create-profile-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-create-profile-result.txt
echo Test Running [AD User Profile Create] - Destroy
echo ----------------------------- >> ..\ad-user-create-profile-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-create-profile-result.txt
cd ..

echo Test Running [AD User RDS Profile Create] - Create
cd ad-user-create-rds-profile
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-create-rds-profile-result.txt
echo ----------------------------- >> ..\ad-user-create-rds-profile-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-create-rds-profile-result.txt
echo Test Running [AD User RDS Profile Create] - Destroy
echo ----------------------------- >> ..\ad-user-create-rds-profile-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-create-rds-profile-result.txt
cd ..

echo Test Running [AD User Disable] - Create
cd ad-user-disable
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-disable-result.txt
echo ----------------------------- >> ..\ad-user-disable-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-disable-result.txt
echo Test Running [AD User Disable] - Destroy
echo ----------------------------- >> ..\ad-user-disable-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-disable-result.txt
cd ..

echo Test Running [AD User Enable] - Create
cd ad-user-enable
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-enable-result.txt
echo ----------------------------- >> ..\ad-user-enable-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-enable-result.txt
echo Test Running [AD User Enable] - Destroy
echo ----------------------------- >> ..\ad-user-enable-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-enable-result.txt
cd ..

echo Test Running [AD User List #1]
cd ad-user-list-1
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-list-1-result.txt
echo ----------------------------- >> ..\ad-user-list-1-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-list-1-result.txt
echo Test Running [AD User List #1] - Destroy
echo ----------------------------- >> ..\ad-user-list-1-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-list-1-result.txt
cd ..

echo Test Running [AD User List #2] - Create
cd ad-user-list-2
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-list-2-result.txt
echo ----------------------------- >> ..\ad-user-list-2-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-list-2-result.txt
echo Test Running [AD User List #2] - Destroy
echo ----------------------------- >> ..\ad-user-list-2-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-list-2-result.txt
cd ..

echo Test Running [AD User Rename] - Create
cd ad-user-rename
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-rename-result.txt
echo ----------------------------- >> ..\ad-user-rename-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-rename-result.txt
echo Test Running [AD User Rename] - Destroy
echo ----------------------------- >> ..\ad-user-rename-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-rename-result.txt
cd ..

echo Test Running [AD User Reset] - Create
cd ad-user-reset
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-reset-result.txt
echo ----------------------------- >> ..\ad-user-reset-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-reset-result.txt
echo Test Running [AD User Reset] - Destroy
echo ----------------------------- >> ..\ad-user-reset-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-reset-result.txt
cd ..

echo Test Running [AD User Unlock] - Create
cd ad-user-unlock
copy ..\credentials\terraform.tfvars /y > nul
terraform init -no-color > ..\ad-user-unlock-result.txt
echo ----------------------------- >> ..\ad-user-unlock-result.txt
terraform apply -auto-approve -no-color >> ..\ad-user-unlock-result.txt
echo Test Running [AD User Unlock] - Destroy
echo ----------------------------- >> ..\ad-user-unlock-result.txt
terraform destroy -auto-approve -no-color >> ..\ad-user-unlock-result.txt
cd ..

echo -----------------------------

pause