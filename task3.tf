module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "test-cluster"
  instance_count         = 2

  ami                    = "ami-0cf6f5c8a62fa5da6"
  instance_type          = "t2.micro"
  monitoring             = true
  subnet_id              = "subnet-27b0335f"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}