# terraform-aws-vpc

Terraform module that manages an [Amazon VPC](https://aws.amazon.com/vpc/). It
creates a single VPC with configurable CIDR block, tenancy and DNS behaviour,
sane private-by-default settings and consistent tagging.

## Usage

```hcl
module "vpc" {
  source = "github.com/moveeeax/terraform-aws-vpc"

  name       = "prod-vpc"
  cidr_block = "10.0.0.0/16"

  tags = {
    Environment = "production"
    ManagedBy   = "terraform"
  }
}
```

A runnable example lives in [`examples/basic`](examples/basic).

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.5   |
| aws       | >= 5.0   |

## Inputs

| Name                   | Description                                                        | Type          | Default          | Required |
|------------------------|--------------------------------------------------------------------|---------------|------------------|:--------:|
| `name`                 | Name tag applied to the VPC.                                       | `string`      | n/a              |   yes    |
| `cidr_block`           | IPv4 CIDR block for the VPC.                                       | `string`      | `"10.0.0.0/16"`  |    no    |
| `instance_tenancy`     | Tenancy of instances launched into the VPC (default or dedicated). | `string`      | `"default"`      |    no    |
| `enable_dns_support`   | Whether DNS resolution is supported for the VPC.                  | `bool`        | `true`           |    no    |
| `enable_dns_hostnames` | Whether instances receive public DNS hostnames.                   | `bool`        | `true`           |    no    |
| `tags`                 | Tags applied to the VPC.                                          | `map(string)` | `{}`             |    no    |

## Outputs

| Name                        | Description                                            |
|-----------------------------|--------------------------------------------------------|
| `id`                        | ID of the VPC.                                         |
| `arn`                       | ARN of the VPC.                                        |
| `cidr_block`                | IPv4 CIDR block of the VPC.                            |
| `default_security_group_id` | ID of the default security group created with the VPC. |
| `default_route_table_id`    | ID of the default route table created with the VPC.    |
| `main_route_table_id`       | ID of the main route table associated with the VPC.    |

## License

[MIT](LICENSE)
