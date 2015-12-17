# vagrant-puppet_get_iplayer
A Vagrant environment for testing
[puppet-get_iplayer](https://github.com/sevendials/puppet-get_iplayer)

## Usage
Install
[Vagrant](https://www.vagrantup.com/downloads.html) and ensure you have a
working
[Vagrant provider](https://docs.vagrantup.com/v2/getting-started/providers.html)
such as [VirtualBox](https://www.virtualbox.org/). Then run the following
commands:

````bash
# Install recommended plugins (if you want them):
#   vagrant-cachier will cache the Linux packages locally for later use
vagrant plugin install vagrant-cachier
#   vagrant-hostmanager will allow you to resolve the VM hostname ("gitlab.box")
#   from your computer
vagrant plugin install vagrant-hostmanager
 
# Clone repo:
git clone https://github.com/liger1978/vagrant-puppet_get_iplayer.git

# Start and provision the Vagrant environment:
cd vagrant-puppet-get_iplayer

# (start box of your choice)
vagrant up centos6
vagrant up centos7
vagrant up ubuntu1204
vagrant up ubuntu1404
````

get_iplayer PVR should then be available in your computer's web browser:
 - http://iplayer-centos6.box/
 - http://iplayer-centos7.box/
 - http://iplayer-ubuntu1204.box/
 - http://iplayer-ubuntu1404.box/