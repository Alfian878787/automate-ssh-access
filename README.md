# automate-ssh-access
Automate the process of granting / revoking SSH access to a group of servers instances to a new developer

Assumption: 
1. ansible is installed properly on the main server
2. Users are already created on servers

Solution:

1. Create the group of servers in /etc/ansible/hosts file for which you want to grant or revoke the access for specific user

2. Execute ansible playbook.yml with arguements

ansible-playbook playbook.yml -e userid=monica -e action=revoke


