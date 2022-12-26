#!/bin/bash/
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/roboshop-devops-project/mongodb/main/mongo.repo
yum install -y mongodb-org

sed -i "s/127.0.0.1/0.0.0.0/" /etc/mongod.conf
systemctl enable mongod
systemctl start mongod