terraform {
  source = "../../modules/alb"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  alb_name        = "dev-alb"
  vpc_id          = "vpc-abc123"  # Replace with actual VPC ID
  subnet_ids      = ["subnet-12345", "subnet-67890"]
  certificate_arn = "arn:aws:acm:region:account:certificate/cert-id"
  tags            = local.tags
}
