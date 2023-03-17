# nf-db-challenge

# Technical design specifica􀆟ons document
- Requirement - Descripton
- Architecture - draw.io, lucid chart
- CloudFormaton template based on the requirement
- GIT, GITHUB


## Req 1:
Build a CF stack with following set of resources

Virtual Private Cloud
- Public subnet with an EC2 Instance
- RDS with Aurora db engine (RDBMS)
- Multi-AZ
- Highly scalable - Read replicas



mysql -h aurora-stack-db.cluster-ca9qvdmzpgv8.eu-central-1.rds.amazonaws.com -u <db_username> -p<db_password> <db_name>
