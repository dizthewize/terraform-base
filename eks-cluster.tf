module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "18.26.2"
  # insert the 17 required variables here
  cluster_name = "myapp-eks-cluster"
  cluster_version = "1.22"

  subnet_ids = module.myapp-vpc.private_subnets
  vpc_id = module.myapp-vpc.vpc_id

  eks_managed_node_groups = {
    dev = {
      min_size = 1
      max_size = 3
      desired_size = 3

      instance_type = "t2.small"
    }
  }

  tags = {
    environment = "development"
    application = "myapp"
  }
}
