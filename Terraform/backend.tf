# backend "s3" {
#   bucket = "terraform-s3-bucket-name"
#   key    = "s3 key path"
#   region = "us-west-1"
# }

## Terraform Cloud backend to store state

terraform {
  cloud {
    organization = "sdobhal369"

    workspaces {
      name = "DevOps_Training"
    }
  }
}