provider "aws" {
  region = "eu-central-1"

  # Make it faster by skipping the following
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}


module "basic" {
  source = "../../"
  # direction - (required) is a type of string
  direction = "INBOUND"
  # name - (optional) is a type of string
  name = "basic"
  # security_group_ids - (required) is a type of set of string
  security_group_ids = ["sg-12345678901234567"]
  # tags - (optional) is a type of map of string
  tags = {
    test      = "yes"
    terraform = "yes"
  }

  ip_address = [{
    ip        = null
    ip_id     = null
    subnet_id = "subnet-12345678901234567"
    },
    {
      ip        = null
      ip_id     = null
      subnet_id = "subnet-12345678907654321"
    },
  ]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]

}
