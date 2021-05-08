#!/usr/bin/env bash

#CONFIGURAÇÃO PARA INSTALAR JDK DA ORACLE
sudo apt-get install -y python-software-propeties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

#INSTALAÇÃO CLIENTES MYSQL E MONGODB
sudo apt-get install -y mysql-client-core-5.7
sudo apt-get -y install mongodb-org-tools

#INSTALAÇÃO JAVA
sudo apt-get install -y oracle-java8-installer
echo -en "JAVA_HOME='/usr/lib/jvm/java-8-oracle'" >> /etc/environment
source /etc/environment

#INSTALAÇÃO MAVEN
sudo apt-get install -y mavem

#BUILD & DEPLOY
mvn -f /vagrant/minha-aplicacao/pom.xml clean package wildfly:deploy