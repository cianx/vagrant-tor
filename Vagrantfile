# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "ubuntu/xenial64"
  config.vm.provision "shell", path: "provision.sh"

  config.vm.synced_folder File.expand_path('~'), "/home/vagrant/home"
  
  config.vm.provider "virtualbox" do |vb|
    vb.name = "pwn"
    vb.memory = "1024"
	vb.gui = true
  end
  
  config.ssh.forward_agent = true
end

