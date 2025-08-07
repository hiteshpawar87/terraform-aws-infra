terraform {
  source = "../../../modules/alb"
}

inputs = {
  name               = "dev-alb"
  internal           = false
  subnet_ids         = ["subnet-abc123", "subnet-def456"]
  security_group_ids = ["sg-12345678"]
  environment        = "dev"
}
