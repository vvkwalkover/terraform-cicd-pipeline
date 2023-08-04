#store artifact in s3
terraform {
  backend "s3" {
    bucket     = "aws-terraform-cicd-pipeline"
    encrypt    = true
    key        = "terraform.tfstate"
    access_key = "AKIA5YLR2KOV7ZS3A3UK"
    secret_key = "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"
    region     = "us-east-1"
  }
}


#Provider--> aws
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA5YLR2KOV7ZS3A3UK"
  secret_key = "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"
}