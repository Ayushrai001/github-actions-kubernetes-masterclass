output "cluster_role_arn" {
  value = aws_iam_role.eks_cluster_role.arn
}

output "node_role_arn" {
  value = aws_iam_role.node_group_role.arn
}

output "eks_cluster_policy" {
  value = aws_iam_role_policy_attachment.eks_cluster_policy
}

output "worker_node_policy" {
  value = aws_iam_role_policy_attachment.worker_node_policy
}

output "ecr_readonly_policy" {
  value = aws_iam_role_policy_attachment.ecr_readonly
}
