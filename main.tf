resource "aws_route53_resolver_endpoint" "this" {
  # direction - (required) is a type of string
  direction = var.direction
  # name - (optional) is a type of string
  name = var.name
  # security_group_ids - (required) is a type of set of string
  security_group_ids = var.security_group_ids
  # tags - (optional) is a type of map of string
  tags = var.tags

  dynamic "ip_address" {
    for_each = var.ip_address
    content {
      # ip - (optional) is a type of string
      ip = ip_address.value["ip"]
      # subnet_id - (required) is a type of string
      subnet_id = ip_address.value["subnet_id"]
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      # create - (optional) is a type of string
      create = timeouts.value["create"]
      # delete - (optional) is a type of string
      delete = timeouts.value["delete"]
      # update - (optional) is a type of string
      update = timeouts.value["update"]
    }
  }

}
