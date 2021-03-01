terraform {
    backend "s3" {
       bucket = "aglass-terraform-up-and-running-state"
       key    = "global/s3/terraform.tfstate"
       region = "eu-west-1"

       dynamodb_table = "terraform-up-and-running-locks"
       encrypt        = true
    }
}