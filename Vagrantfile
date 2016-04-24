# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.


$script = <<SCRIPT
sudo -i
echo I am provisioning...

# Install docker-compose.
curl -L https://github.com/docker/compose/releases/download/1.7.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose


SCRIPT


Vagrant.configure("2") do |config|

# Now working in win 10 - if you have virtualbox 5.0.4+
  config.vm.network :private_network, ip: "192.168.50.6"

  # testing this due to vagrant asking for ssh pw ? May not be needed
  config.ssh.insert_key = false

  # apahce
  config.vm.network :forwarded_port, guest: 8080, host: 8080
   config.vm.network :forwarded_port, guest: 80, host: 80
  config.vm.network :forwarded_port, guest: 3306, host: 3306

  # https://github.com/dduportal/boot2docker-vagrant-box
  config.vm.box = "dduportal/boot2docker"


  config.vm.synced_folder "./", "/src"

  # ---- Fabble lib folders ---- #
  #config.vm.synced_folder "./vendor/fabrikar/source/libraries/fabble", "/src/public_html/libraries/fabble"
  #config.vm.synced_folder "./vendor/fabrikar/source/media/lib_fabble", "/src/public_html/media/lib_fabble"

    # Run our provisioning shell script
    config.vm.provision "shell", inline: $script
end