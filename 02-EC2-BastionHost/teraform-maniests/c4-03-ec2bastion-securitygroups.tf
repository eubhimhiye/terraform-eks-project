module "public-bastion_sg" {
   source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "${local.name}-public-bastion_sg"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = module.my-vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
   
  ingress_rules            = ["ssh-tcp"]
  egress_rules = ["all-all"]
  tags = local.common_tags
  }