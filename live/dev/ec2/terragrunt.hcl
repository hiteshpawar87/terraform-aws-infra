terraform {
  source = "../../modules/ec2"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  instance_name   = "dev-ec2"
  ami_id          = "ami-0abcdef1234567890"  # Replace with actual AMI ID
  instance_type   = "t3.micro"
  subnet_id       = "subnet-12345"
  key_name        = "your-key-name"
  vpc_security_group_ids = ["sg-12345678"]
  tags            = local.tags
}
