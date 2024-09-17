# terraform-study

## 사용법
1. provider가 있는 폴더에서 `terraform init`
2. 해당 폴더에서 인스턴스를 생성하기 위해서는 `terraform apply -var-file="terraform.dev.tfvars"`
3. 인스턴스가 잘 생성될것 같은지 확인하기 위해서는 `terraform plan -var-file="terraform.dev.tfvars"`
4. 생성된 인스턴스를 제거하기 위해서는 `terraform destroy -var-file="terraform.dev.tfvars"`