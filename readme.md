###  ℹ️ Dev Vagrant | Gerenciando máquinas virtuais

Ambientes de desenvolvimento de software virtual portátil;		
Por exemplo, para VirtualBox, KVM, Hyper-V, contêineres Docker, VMware e AWS.

----

### 🔨 Exemplo:

Aqui podemos ver a estrutura - hyperv.


Arquivo: setup-vagrant.sh
```MD

#!/usr/bin/env bash

# CONFIGURAÇÃO PARA INSTALAR JDK DA ORACLE
sudo apt-get install -y python-software-propeties debconf-utils
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

# INSTALAÇÃO CLIENTES MYSQL E MONGODB
sudo apt-get install -y mysql-client-core-5.7
sudo apt-get -y install mongodb-org-tools

# INSTALAÇÃO JAVA
sudo apt-get install -y oracle-java8-installer
echo -en "JAVA_HOME='/usr/lib/jvm/java-8-oracle'" >> /etc/environment
source /etc/environment

# INSTALAÇÃO MAVEN
sudo apt-get install -y mavem

# BUILD & DEPLOY
mvn -f /vagrant/minha-aplicacao/pom.xml clean package wildfly:deploy

```

Arquivo: Vagrantfile
```MD

Vagrant.configure("2") do |config|

    config.vm.box = "hashicorp/precise64"

    config.vm.provision :shell, path: "setup-vagrant.sh"

    config.vm.network :forwarded_port, guest: 8080, host: 8080, host_ip: "127.0.0.1"
    config.vm.network :forwarded_port, guest: 3306, host: 3306, host_ip: "127.0.0.1"

    config.vm.provider "hyperv" do |vb|
        vb.memory = 1024
        vb.cpus = 2
	vb.vmname = "HashicorpPrecise"
	vb.differencing_disk = "10GB"
    end

end

```

----

#### ➡️ Links:

[<img title="Vagrant" align="left" alt="josenilto | Twitter" width="28px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/vagrant.svg" />][vagrant]

[vagrant]: https://www.vagrantup.com


<h4 align="center"> 
	🚧 Tutorial de instalação 🚀 Em construção...  🚧	
</h4>

https://www.vagrantup.com/docs
