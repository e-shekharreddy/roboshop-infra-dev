#!/bin/bash

# 1. Expand the partition
sudo growpart /dev/nvme0n1 4

# 2. Extend the LVM and Resize the FS (Fixed typo: homeVol)
sudo lvextend -r -L +30G /dev/mapper/RootVG-homeVol

# 3. Install Terraform
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo yum -y install terraform