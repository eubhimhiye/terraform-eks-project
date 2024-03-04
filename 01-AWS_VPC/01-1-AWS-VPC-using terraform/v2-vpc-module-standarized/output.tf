output "vpc_1d" {
  description = "the ID of the vpc"
  value       = module.my-vpc.vpc_id
}
output "vpc_cidr_block" {
  value = module.my-vpc.vpc_cidr_block
}
output "private_subnets" {
  value = module.my-vpc.private_subnets
}
output "public_subnets" {
  value = module.my-vpc.public_subnets
}