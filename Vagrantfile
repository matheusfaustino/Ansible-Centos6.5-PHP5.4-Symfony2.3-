# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # setting vagrant box
  config.vm.box = "centos65"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.3/centos65-x86_64-20140116.box"

  # setting provisioner to config box
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.tags = "host"
  end

  # networking config
  config.vm.network :private_network, ip: "192.168.33.102"

end
