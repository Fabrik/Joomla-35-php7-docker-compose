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

  # ---- Fabrik folders ---- #
  config.vm.synced_folder "./fabrik/administrator/components/com_fabrik", "/src/public/administrator/components/com_fabrik"
  config.vm.synced_folder "./fabrik/administrator/modules/mod_fabrik_form", "/src/public/administrator/modules/mod_fabrik_form"
  config.vm.synced_folder "./fabrik/administrator/modules/mod_fabrik_list", "/src/public/administrator/modules/mod_fabrik_list"
  config.vm.synced_folder "./fabrik/administrator/modules/mod_fabrik_quickicon", "/src/public/administrator/modules/mod_fabrik_quickicon"
  config.vm.synced_folder "./fabrik/administrator/modules/mod_fabrik_visualization", "/src/public/administrator/modules/mod_fabrik_visualization"

  config.vm.synced_folder "./fabrik/components/com_fabrik", "/src/public/components/com_fabrik"
  config.vm.synced_folder "./fabrik/media/com_fabrik", "/src/public/media/com_fabrik"
  config.vm.synced_folder "./fabrik/libraries/fabrik", "/src/public/libraries/fabrik"
  config.vm.synced_folder "./fabrik/plugins/system/fabrik", "/src/public/plugins/system/fabrik"
  config.vm.synced_folder "./fabrik/plugins/system/fabrikcron", "/src/public/plugins/system/fabrikcron"
  config.vm.synced_folder "./fabrik/plugins/system/fabrikj2store", "/src/public/plugins/system/fabrikj2store"
  config.vm.synced_folder "./fabrik/plugins/content/fabrik", "/src/public/plugins/content/fabrik"
  config.vm.synced_folder "./fabrik/plugins/fabrik_cron", "/src/public/plugins/fabrik_cron"
  config.vm.synced_folder "./fabrik/plugins/fabrik_element", "/src/public/plugins/fabrik_element"
  config.vm.synced_folder "./fabrik/plugins/fabrik_form", "/src/public/plugins/fabrik_form"
  config.vm.synced_folder "./fabrik/plugins/fabrik_list", "/src/public/plugins/fabrik_list"
  config.vm.synced_folder "./fabrik/plugins/fabrik_validationrule", "/src/public/plugins/fabrik_validationrule"
  config.vm.synced_folder "./fabrik/plugins/fabrik_visualization", "/src/public/plugins/fabrik_visualization"
  config.vm.synced_folder "./fabrik/modules/mod_fabrik_form", "/src/public/modules/mod_fabrik_form"
  config.vm.synced_folder "./fabrik/modules/mod_fabrik_list", "/src/public/modules/mod_fabrik_list"
  config.vm.synced_folder "./fabrik/modules/mod_tagcloud", "/src/public/modules/mod_tagcloud"
  config.vm.synced_folder "./fabrik/libraries/joomla/document/fabrikfeed", "/src/public/libraries/joomla/document/fabrikfeed"
  config.vm.synced_folder "./fabrik/libraries/joomla/document/pdf", "/src/public/libraries/joomla/document/pdf"


   # Run our provisioning shell script
   config.vm.provision "shell", inline: $script

   # As the driver/query folders already exist we can only share the db driver files (they wont be updated in the VM if you edit them
   # with the VM already running:
   config.vm.provision "file", source: "./fabrik/libraries/joomla/database/driver/pdomysql_fab.php", destination: "/src/public/libraries/joomla/database/driver/pdomysql_fab.php"
   config.vm.provision "file", source: "./fabrik/libraries/joomla/database/query/pdomysql_fab.php", destination: "/src/public/libraries/joomla/database/query/pdomysql_fab.php"
end
