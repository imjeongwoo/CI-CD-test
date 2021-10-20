#!/bin/bash
# EC2 Ubuntu
echo '>>> JDK 설치'
sudo apt update
sudo apt install openjdk-11-jdk -y && java -version
# sudo apt install ca-certificates
echo ''

echo '>>> Jenkins Setup'
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

echo '>>> Ubuntu 패키지 업데이트'
sudo apt update
echo ''

echo '>>> Jenkins 설치'
sudo apt install jenkins -y
echo ''

echo '>>> Jenkins 실행'
sudo systemctl start jenkins
sudo systemctl enable jenkins
echo ''

echo '>>> InitialAdminPassword'
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
echo ''
