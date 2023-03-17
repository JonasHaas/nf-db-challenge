output "aurora_cluster_endpoint" {
  value = aws_rds_cluster.aurora-db.endpoint
}

output "ec2_instance_elastic_ip" {
  value = aws_eip.static-ip-sub1.public_ip
}