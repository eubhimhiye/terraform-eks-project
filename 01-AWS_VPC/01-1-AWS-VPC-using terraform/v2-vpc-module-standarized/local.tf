locals {
  Owners      = var.business_division
  Environment = var.Environment
  # name = "${var.business_division}-${var.Environment}"
  name = "${local.Owners}-${local.Environment}"
  common_tags = {
    Owners      = local.Owners
    Environment = local.Environment
  }
}
#=hr-dev