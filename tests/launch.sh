#!/bin/bash

docker-compose up -d

docker-compose exec ub /etc/init.d/ssh start
cat ~/.ssh/id_rsa.pub | docker-compose exec -T ub bash -c 'cat > /home/ubuntu/.ssh/authorized_keys'

sht -f test.sh test-sht

#ssh -o "UserKnownHostsFile=/dev/null" -o "StrictHostKeyChecking=no" ubuntu@127.0.0.1 -p 222