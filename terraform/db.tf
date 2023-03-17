resource "aws_rds_cluster" "aurora-db" {
  cluster_identifier      = "aurora-stack-db"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.11.1"
  database_name           = "db"
  master_username         = "admin"
  master_password         = "db-password"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
  vpc_security_group_ids  = [aws_security_group.allow_aurora_mysql.id]
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
  
  skip_final_snapshot       = true
  final_snapshot_identifier = "aurora-db-final-snapshot"

  tags = {
    Name = "aurora-stack-aurora-db"
  }
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 2
  identifier         = "aurora-stack-db-cluster-instance-${count.index}"
  cluster_identifier =  aws_rds_cluster.aurora-db.id
  instance_class     = "db.t3.small"
  engine             = "aurora-mysql"
  availability_zone  = "${data.aws_region.current.name}${count.index == 0 ? "a" : "b"}"

  tags = {
    Name = "aurora-stack-cluster-instance-${count.index + 1}"
  }
}