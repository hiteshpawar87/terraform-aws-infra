terraform {
  source = "../../modules/vpc"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  vpc_name           = "dev-vpc"
  cidr_block         = "10.0.0.0/16"
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets    = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway = true
  enable_dns_hostnames = true
  tags               = local.tags
}
