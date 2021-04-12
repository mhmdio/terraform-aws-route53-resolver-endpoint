variable "direction" {
  description = "(required) The direction of DNS queries to or from the Route 53 Resolver endpoint. Valid values are INBOUND (resolver forwards DNS queries to the DNS service for a VPC from your network or another VPC) or OUTBOUND (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC)."
  type        = string
}

variable "name" {
  description = "(optional) The friendly name of the Route 53 Resolver endpoint."
  type        = string
  default     = null
}

variable "security_group_ids" {
  description = "(required) The ID of one or more security groups that you want to use to control access to this VPC."
  type        = set(string)
}

variable "tags" {
  description = "(optional) A map of tags to assign to the resource."
  type        = map(string)
  default     = null
}

variable "ip_address" {
  description = "nested block: NestingSet, min items: 2, max items: 10 - The subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints)."
  type = set(object(
    {
      ip        = string
      ip_id     = string
      subnet_id = string
    }
  ))
}

variable "timeouts" {
  description = "nested block: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}
