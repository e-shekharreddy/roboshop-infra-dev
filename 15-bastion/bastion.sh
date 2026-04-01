#!/bin/bash

# we are creating 50Gb root disk, but only 20gb is partioned 
# reamaing 30GB we need to exted using below commands
growpart /dev/nvme0n1 4
lvextend -r -L +30G /dev/mapper/RootVG-homeVol
xfs_growfs /home

yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum -y install terraform


# for databases creation
cd /home/ec2-user
git clone https://github.com/e-shekharreddy/roboshop-infra-dev.git
chown ec2-user:ec2-user -R roboshop-infra-dev
cd roboshop-infra-dev/20-databases
terraform init
terraform apply -auto-approve


# for components creation
cd /home/ec2-user
git clone https://github.com/e-shekharreddy/roboshop-infra-dev.git
chown ec2-user:ec2-user -R roboshop-infra-dev
cd roboshop-infra-dev/45-components
terraform init
terraform apply -auto-approve