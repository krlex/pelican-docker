# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"
  # config.vm.box_check_update = false
  #config.vm.network "forwarded_port", guest: 8052, host: 8052
  #config.vm.network "forwarded_port", guest: 5000, host: 5000, host_ip: "127.0.0.1"
  config.vm.network "private_network", type: "dhcp"
  # config.vm.network "public_network"
  # config.vm.synced_folder ".", "/vagrant"
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  config.vm.provision "shell", inline: <<-SHELL
     apt install -y git net-tools curl
     bash <(curl -sL https://raw.githubusercontent.com/krlex/docker-installation/master/script.sh)
  SHELL
end
