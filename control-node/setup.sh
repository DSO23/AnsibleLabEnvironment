#!/bin/bash

ssh-keygen -t rsa -b 2048 -f ~/.ssh/id_rsa -N ""

for server in managed-node-1 managed-node-2 managed-node-3
do
   sshpass -p "password" ssh-copy-id -o StrictHostKeyChecking=no ${server}
done