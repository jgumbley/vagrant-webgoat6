# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'
Vagrant.require_version ">= 1.7.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'trusty64'
  config.vm.box_url = 'https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box'

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.vm.define "goatbox", primary: true do |goatbox|

    config.vm.provision "ansible" do |ansible|
        ansible.playbook = "webgoat6.yml"
    end

    goatbox.vm.network "forwarded_port", guest: 80, host: 6174
    goatbox.ssh.forward_agent = true

    config.vm.synced_folder "../", "/opt/dev/", create: true
    config.vm.synced_folder File.join(Dir.home, ".vagrant.d"),
        "/vagrant/vagrant.d"
  end

end
