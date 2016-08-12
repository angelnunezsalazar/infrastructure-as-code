# -*- mode: ruby -*-
# vi: set ft=ruby :
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu14.04-x86"
  
  config.vm.network "forwarded_port", guest: 80, host: 8686

  #config.vm.provider :virtualbox do |vb|
	#  vb.name = "vagrant-jenkins"
  #end

  # Make sure we have properly udpated apt
  config.vm.provision 'shell',
       :inline => 'if [ ! -f "/apt-cached" ]; then apt-get update && touch /apt-cached; fi'

  #config.vm.provision :puppet do |puppet|
	#  puppet.manifests_path = "apache/examples"
  #  puppet.manifest_file = "init.pp"
  #end
end
