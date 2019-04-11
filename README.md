# automate-ssh-access
Automate the process of granting / revoking SSH access to a group of servers instances to a new developer

Assumption: 
1. ansible is installed properly on the main server
2. Users are already created on servers

Solution1:

1. Create the group of servers in /etc/ansible/hosts file for which you want to grant or revoke the access for specific user

2. Execute ansible playbook.yml with arguements

ansible-playbook playbook.yml -e userid=monica -e action=revoke

solution2:

Looking for AWS solution too , following user guide mentioned below and will take sometime 
AWS= https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html


Please correct me if Im wrong somewhere
