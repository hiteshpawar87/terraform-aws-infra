terraform {
  source = "../../../modules/ec2"
}

inputs = {
  ami_id               = "ami-0abcdef1234567890"
  instance_type        = "t3.micro"
  subnet_id            = "subnet-abc123"
  security_group_ids   = ["sg-12345678"]
  key_name             = "dev-keypair"
  associate_public_ip  = true
  name                 = "dev-ec2"
  environment          = "dev"
}
