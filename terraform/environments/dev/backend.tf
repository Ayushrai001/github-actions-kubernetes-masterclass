terraform {
  backend "s3" {
    bucket         = "skillpulse-tfstate-ayush-2026"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
