terraform {
  backend "s3" {
    bucket = "capci-gr1-project-backend-406843093389"
    key    = "capci-g1/setting_up_migrationlab/terraform.tfstates"
    dynamodb_table = "CAPCI-terraform-lock"
  }
}

