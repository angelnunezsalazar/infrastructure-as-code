# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "forwarded_port", guest: 80, host: 8686

  #config.puppet_install.puppet_version = :latest

  # Make sure we have properly udpated apt
  #config.vm.provision 'shell',
  #     :inline => 'if [ ! -f "/apt-cached" ]; then apt-get update && touch /apt-cached; fi'

  #config.vm.provision :puppet do |puppet|
  #  puppet.manifests_path = "apache/examples"
  #  puppet.manifest_file = "init.pp"
  #end
end
