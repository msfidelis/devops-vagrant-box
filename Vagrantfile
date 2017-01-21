# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.synced_folder "Workspace/", "/home/Workspace"
  config.vm.network "public_network"
  config.vm.provision :shell, path: "bootstrap.sh"
end

