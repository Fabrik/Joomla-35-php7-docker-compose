Introduction
-------------

This project aims to provide a server environment for testing the Joomla 3.5 beta2 release and Fabrik. It consists of

* Vagrantfile - for windows users to boot to docker
* docker-compose.yml - A docker compose file describing the test server
* sql - A folder containing server start up SQL to create the Joomla and Fabrik db tables
* public - A folder containing the Joomla web site

Getting started
---------------

Installation of docker / vagrant is outside the scope of this project. My own set up has grown organically and 
as Docker development is moving so fast I feel it best to simply refer you to their installation guide:
https://docs.docker.com/windows/step_one/

Before starting make sure nothing else is using the ports 80, 8080 and 3306 (e.g. Xampp or similar)

Open up a bash terminal (running as administrator - e.g. right click on the application icon and select "run as administrator")
From the command prompt navigate to this projects folder and enter:

> vagrant up -provision

(note for some reason you will need to provision every time you perform "vagrant up")
Vagrant will run up a virtual machine running linux and boot2docker. To ssh into the virtual machine type:

> vagrant ssh

On the virtual machine, the docker-compose set up is located in /src in the ssh terminal prompt enter:
 
> cd /src
 
From here we can run a command to create our actual server:

> docker-compose up -d

This will take a while whilst it downloads the various docker files. The -d flag runs the server in the background so that once it is
running you can perform other commands inside the vagrant box.

You will need to edit your configuration.php file to set the database driver to the PDO driver

Once up you should be able to open a browser with the address http://127.0.0.1:8080 and your Joomla site should be visible.

Notes:
---------
The Joomla admin user is:

username: admin
password: admin

Note you may want to change Joomla's log and tmp paths as they currently point to:
public $log_path = 'F:\\Users\\rob\\PhpstormProjects\\joomla35/logs';
public $tmp_path = 'F:\\Users\\rob\\PhpstormProjects\\joomla35/tmp';

