# nf-db-challenge

1. in the terraform folder run 'terraform apply'
2. go make coffee till terraform is done (~12min)
3. copy the public ip from the terminal
4. ssh into the ec2 instance
5. `sudo yum install mariadb` on the ec2 instance
6. copy the db endpoint from the terminal
7. in the ec2 instance replace endpoint and run:
8. `mysql -h <endpoint> -P 3306 -u admin -p`

### Dont forget to run `terraform destroy` when you are done
