
Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 443, host: 443
  config.vm.network "forwarded_port", guest: 3306, host: 3306

  config.vm.provision "docker"
  config.vm.provision "docker_compose"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "6400"
  end
end
