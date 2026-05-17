module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr = "10.0.0.0/16"
  vpc_name = "skillpulse-dev-vpc"

  azs = [
    "ap-south-1a",
    "ap-south-1b"
  ]
}

module "iam" {
  source = "../../modules/iam"
}

module "eks" {
  source = "../../modules/eks"

  cluster_name = "skillpulse-eks"

  cluster_role_arn = module.iam.cluster_role_arn
  node_role_arn    = module.iam.node_role_arn

  subnet_ids = module.vpc.public_subnets

  eks_cluster_policy     = module.iam.eks_cluster_policy
  eks_worker_node_policy = module.iam.worker_node_policy
  ecr_readonly_policy    = module.iam.ecr_readonly_policy
}
