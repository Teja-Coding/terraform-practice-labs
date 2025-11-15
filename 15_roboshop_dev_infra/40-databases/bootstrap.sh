#!/bin/bash

dnf install ansible -y
ansible-pull -u https://github.com/Teja-Coding/ansible-roboshop-roles-tf.git -e commponent=mongodb main.yaml