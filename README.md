## Create AWS VPC using Terraform

### Usage
```hcl
module "vpc" {

    source = "shamimice03/vpc/aws"

    vpc_name = "prod-vpc"
    cidr     = "192.168.0.0/16"

    azs                 = ["ap-northeast-1a", "ap-northeast-1c", "ap-northeast-1d"]
    public_subnet_cidr  = ["192.168.0.0/20", "192.168.16.0/20", "192.168.32.0/20"]
    private_subnet_cidr = ["192.168.48.0/20", "192.168.64.0/20", "192.168.80.0/20"]
    db_subnet_cidr      = ["192.168.96.0/20", "192.168.112.0/20", "192.168.128.0/20"]
    intra_subnet_cidr   = ["192.168.144.0/20", "192.168.160.0/20", "192.168.176.0/20"]

    enable_dns_hostnames      = true
    enable_dns_support        = true
    enable_single_nat_gateway = false

    tags = {
      "Team" = "platform-team"
      "Env"  = "prod"
    }
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
*auto populated information
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

***
### Others:
- [Subnet Calculator](https://www.solarwinds.com/free-tools/advanced-subnet-calculator)
