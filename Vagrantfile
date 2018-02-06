# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "testvm-dev" do |conf|
   conf.vm.box = "rhel65-1.0.0"
   conf.vm.box_url = "http://repo.release.cerner.corp/nexus/content/repositories/vagrant/com/cerner/vagrant/rhel65/1.0.0/rhel65-1.0.0.box"
   conf.vm.hostname = "vm02"
   conf.vm.network "private_network", ip: "192.168.33.10"
   conf.vm.network "forwarded_port", guest: 80, host: 8000
   conf.vm.network "forwarded_port", guest: 81, host: 8081 
  end

  config.vm.define "testvm-prod" do |conf|
   conf.vm.box = "rhel65-1.0.0"
   conf.vm.box_url = "http://repo.release.cerner.corp/nexus/content/repositories/vagrant/com/cerner/vagrant/rhel65/1.0.0/rhel65-1.0.0.box"
   conf.vm.hostname = "vm02"
   conf.vm.network "private_network", ip: "192.168.33.20"
   conf.vm.network "forwarded_port", guest: 80, host: 7000
   conf.vm.network "forwarded_port", guest: 81, host: 7081 
  end
end 