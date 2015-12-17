Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-hostmanager")
    config.hostmanager.enabled = true
    config.hostmanager.manage_host = true
    config.hostmanager.ignore_private_ip = false
    config.hostmanager.include_offline = true
  end

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
    config.cache.enable :yum
    config.cache.enable :apt
  end

  config.vm.provision :shell do |shell|
    shell.inline = "yum -y install git ; true
                    apt-get -q -y update ; true
                    apt-get -q -y install git ; true
                    puppet module install puppetlabs/firewall --force \
                --target-dir /tmp/vagrant-puppet/environments/vagrant/modules/
                    puppet module install puppetlabs/stdlib --force \
                --target-dir /tmp/vagrant-puppet/environments/vagrant/modules/
                    puppet module install nanliu/staging --force \
                 --target-dir /tmp/vagrant-puppet/environments/vagrant/modules/
                    rm -rf \
                   /tmp/vagrant-puppet/environments/vagrant/modules/get_iplayer 
                    git clone \
                    https://github.com/sevendials/puppet-get_iplayer.git \
                   /tmp/vagrant-puppet/environments/vagrant/modules/get_iplayer"
  end
  
  config.vm.provision "puppet" do |puppet|
    puppet.environment_path = "puppet/environments"
    puppet.environment = "vagrant"
    puppet.hiera_config_path = "puppet/environments/vagrant/hiera.yaml"
  end

  config.vm.define "centos6" do |centos6|
    centos6.vm.box = "puppetlabs/centos-6.6-64-puppet"
    centos6.vm.hostname = "iplayer-centos6.box"
    centos6.vm.network :private_network, ip: "172.16.16.20"
  end
  config.vm.define "centos7" do |centos7|
    centos7.vm.box = "puppetlabs/centos-7.0-64-puppet"
    centos7.vm.hostname = "iplayer-centos7.box"
    centos7.vm.network :private_network, ip: "172.16.16.21"
  end
  config.vm.define "ubuntu1204" do |ubuntu1204|
    ubuntu1204.vm.box = "puppetlabs/ubuntu-12.04-64-puppet"
    ubuntu1204.vm.hostname = "iplayer-ubuntu1204.box"
    ubuntu1204.vm.network :private_network, ip: "172.16.16.22"
  end
  config.vm.define "ubuntu1404" do |ubuntu1404|
    ubuntu1404.vm.box = "puppetlabs/ubuntu-14.04-64-puppet"
    ubuntu1404.vm.hostname = "iplayer-ubuntu1404.box"
    ubuntu1404.vm.network :private_network, ip: "172.16.16.23"
  end

end
