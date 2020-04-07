#!/bin/bash

yum install -y epel-release

yum install -y python-virtualenv
virtualenv venv
source venv/bin/activate

yum install -y ansible

ansible-playbook ./awx.yml

ansible-playbook -i ./awx/installer/inventory ./awx/installer/install.yml