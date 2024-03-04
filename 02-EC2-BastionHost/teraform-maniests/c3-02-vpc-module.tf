module "my-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.2"
  #vpc basic details
  name                               = "${local.name}-${var.vpc_name}"
  cidr                               = var.vpc_cidr_block
 # azs                                = var.availability_zones.
  azs = data.aws_availability_zones.available.names
  private_subnets                    = var.private_subnets
  public_subnets                     = var.public_subnets
  create_database_subnet_group       = var.create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  #create_database_nat_gateway_route = true 
  #create_database_internet_gateway_route = true
  database_subnets = var.database_subnets

  #nat gateway for outboud communication
  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway

  #VPC DNS paramenters
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames


  public_subnet_tags = {
    Name = "public-subnet"
  }

  private_subnet_tags = {
    Name = "private-subnet"
  }
  database_subnet_tags = {
    Name = "database-subnet"
  }
  tags     = local.common_tags
  vpc_tags = local.common_tags
}

