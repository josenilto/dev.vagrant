# Vagrant Gerenciando máquinas virtuais
Ambientes de desenvolvimento de software virtual portátil; por exemplo, para VirtualBox, KVM, Hyper-V, contêineres Docker, VMware e AWS.


### 🔨 Exemplo:

Aqui podemos ver a estrutura.


```MD
--- 
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

[<img title="Ansible" align="left" alt="josenilto | Twitter" width="28px" src="https://cdn.jsdelivr.net/npm/simple-icons@v3/icons/vagrant.svg" />][vagrant]

[vagrant]: https://www.vagrantup.com
