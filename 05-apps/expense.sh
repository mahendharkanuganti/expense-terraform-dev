#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/mahendharkanuganti/daws78s-expense-ansible-roles.git
cd expense-ansible-roles
ansible-playbook main.yaml -e component=backend -e login_password=ExpenseApp1