provider "aws" {
  region = "eu-central-1"

  default_tags {
    tags = {
      Terraform = "Yes"
      Test      = "Yes"
    }
  }

  # Make it faster by skipping the following
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

data "aws_default_tags" "current" {}

module "basic" {
  source = "../../"

  direction          = "INBOUND"
  name               = "basic"
  security_group_ids = ["sg-12345678901234567"]
  tags = merge(
    data.aws_default_tags.current.tags,
    {
      Name = "R53-INBOUND"
    }
  )

  ip_address = [
    {
      ip        = null
      ip_id     = null
      subnet_id = "subnet-12345678901234567"
    },
    {
      subnet_id = "subnet-12345678907654321"
    },
  ]

}
