Jenkins Tutorial
1. Using Linux and make sure to have docker and docker-compose
2. download image: docker pull jenkins/jenkins
3. add user jenkins: sudo useradd -u 1000 jenkins
4. make sure to give permission to jenkins(1000) user: sudo chown 1000:1000 jenkins_home -R
5. run : make dc-up 

Overview
Jenkins Dashboard: http://localhost:9090/
PHP NGINX: http://localhost:80/