#!/bin/bash


# ansible-pull -U https://github.com/Teja-Coding/ansible-roboshop-roles-tf.git -e component=$component main.yaml

dnf install ansible -y
REPO_URL=https://github.com/Teja-Coding/ansible-roboshop-roles-tf.git
REPO_DIR=/opt/roboshop/ansible
ANSIBLE_DIR=ansible-roboshop-roles-tf
component=$1
environment=$2 


mkdir -p $REPO_DIR
mkdir -p /var/log/roboshop/
touch ansible.log

cd $REPO_DIR

# check if ansible repo is already cloned or not

if [ -d $ANSIBLE_DIR ]; then

    cd $ANSIBLE_DIR
    git pull
else
    git clone $REPO_URL
    cd $ANSIBLE_DIR
fi

ansible-playbook -e component=$component -e env=$environment main.yaml

