#!/bin/bash

yum install -y epel-release

yum install -y ansible

yum install -y python-virtualenv
virtualenv venv
source venv/bin/activate

ansible-playbook ./awx.yml

ansible-playbook -i ./awx/installer/inventory ./awx/installer/install.yml
