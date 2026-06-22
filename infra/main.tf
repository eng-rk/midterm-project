module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "ec2" {
  source = "./modules/ec2"

  name                = "web-01"
  subnet_id           = module.vpc.public_subnets[0]
  instance_type       = "t3.micro"
  key_name            = ""
  associate_public_ip = true
  tags = {
    Environment = var.environment
  }
}