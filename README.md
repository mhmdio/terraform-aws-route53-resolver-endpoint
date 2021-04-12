# terraform-aws-route53-resolver-endpoint

Provides a Route 53 Resolver endpoint resource.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                    | Version   |
| ------------------------------------------------------- | --------- |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.35.0 |

## Providers

| Name                                              | Version   |
| ------------------------------------------------- | --------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.35.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                        | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_route53_resolver_endpoint.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_resolver_endpoint) | resource |

## Inputs

| Name                                                                                         | Description                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                 | Default | Required |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------ | ------- | :------: |
| <a name="input_direction"></a> [direction](#input\_direction)                                | (required) The direction of DNS queries to or from the Route 53 Resolver endpoint. Valid values are INBOUND (resolver forwards DNS queries to the DNS service for a VPC from your network or another VPC) or OUTBOUND (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC). | `string`                                                                                                                             | n/a     |   yes    |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address)                           | nested block: NestingSet, min items: 2, max items: 10 - The subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints).                                  | <pre>set(object(<br>    {<br>      ip        = string<br>      ip_id     = string<br>      subnet_id = string<br>    }<br>  ))</pre> | n/a     |   yes    |
| <a name="input_name"></a> [name](#input\_name)                                               | (optional) The friendly name of the Route 53 Resolver endpoint.                                                                                                                                                                                                                                                      | `string`                                                                                                                             | `null`  |    no    |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | (required) The ID of one or more security groups that you want to use to control access to this VPC.                                                                                                                                                                                                                 | `set(string)`                                                                                                                        | n/a     |   yes    |
| <a name="input_tags"></a> [tags](#input\_tags)                                               | (optional) A map of tags to assign to the resource.                                                                                                                                                                                                                                                                  | `map(string)`                                                                                                                        | `null`  |    no    |
| <a name="input_timeouts"></a> [timeouts](#input\_timeouts)                                   | nested block: NestingSingle, min items: 0, max items: 0                                                                                                                                                                                                                                                              | <pre>set(object(<br>    {<br>      create = string<br>      delete = string<br>      update = string<br>    }<br>  ))</pre>          | `[]`    |    no    |

## Outputs

| Name                                                                      | Description      |
| ------------------------------------------------------------------------- | ---------------- |
| <a name="output_arn"></a> [arn](#output\_arn)                             | returns a string |
| <a name="output_host_vpc_id"></a> [host\_vpc\_id](#output\_host\_vpc\_id) | returns a string |
| <a name="output_id"></a> [id](#output\_id)                                | returns a string |
| <a name="output_this"></a> [this](#output\_this)                          | n/a              |
<!-- END_TF_DOCS -->
