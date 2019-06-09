The chef-repo
===============
All installations require a central workspace known as the chef-repo. This is a place where primitive objects--cookbooks, roles, environments, data bags, and chef-repo configuration files--are stored and managed.

The chef-repo should be kept under version control, such as [git](http://git-scm.org), and then managed as if it were source code.

Knife Configuration
-------------------
Knife is the [command line interface](https://docs.chef.io/knife.html) for Chef. The chef-repo contains a .chef directory (which is a hidden directory by default) in which the Knife configuration file (knife.rb) is located. This file contains configuration settings for the chef-repo.

The knife.rb file is automatically created by the starter kit. This file can be customized to support configuration settings used by [cloud provider options](https://docs.chef.io/plugin_knife.html) and custom [knife plugins](https://docs.chef.io/plugin_knife_custom.html).

Also located inside the .chef directory are .pem files, which contain private keys used to authenticate requests made to the Chef server. The USERNAME.pem file contains a private key unique to the user (and should never be shared with anyone). The ORGANIZATION-validator.pem file contains a private key that is global to the entire organization (and is used by all nodes and workstations that send requests to the Chef server).

More information about knife.rb configuration options can be found in [the documentation for knife](https://docs.chef.io/config_rb_knife.html).

Cookbooks
---------
A cookbook is the fundamental unit of configuration and policy distribution. A sample cookbook can be found in `cookbooks/starter`. After making changes to any cookbook, you must upload it to the Chef server using knife:

    $ knife upload cookbooks/starter

For more information about cookbooks, see the example files in the `starter` cookbook.

Roles
-----
Roles provide logical grouping of cookbooks and other roles. A sample role can be found at `roles/starter.rb`.

Getting Started
-------------------------
Now that you have the chef-repo ready to go, check out [Learn Chef](https://learn.chef.io/) to proceed with your workstation setup. If you have any questions about Chef you can always ask [our support team](https://www.chef.io/support/) for a helping hand.














manage.chef.io/

Create new account with organization name eurodrone

docker pull chef/chefdk


https://downloads.chef.io/chefdk  --- windows

docker run -p 443 --privileged -h=chef -it chef/chefdk:latest


cd account :service
mvn clean install 
docker build -t manishalankala/airbus-demo:account
sudo docker push manishalankala/airbus-demo:account

Chef server
knife configuration
cookbooks
nodes






wget https://packages.chef.io/files/stable/chefdk/4.0.60/el/7/chefdk-4.0.60-1.el7.x86_64.rpm (Installed on worker machine)
curl -O https://packages.chef.io/files/stable/chefdk/4.0.60/el/7/chefdk-4.0.60-1.el7.x86_64.rpm
 
yum install chefdk-4.0.60-1.el7.x86_64.rpm 
cd /opt/chefdk/
chef --version
knife chef-repo
mkdir chef-repo (Created repo)
cd chef
cd chef-repo
mkdir .chef (Created repo)
cd .chef/
ssh -i .chef/jmslave alma252@35.211.155.102 ( ssh to node )
knife bootstrap 35.211.155.102 -x alma252 -i .chef/jmslave --sudo --node-name gce-jmslave
knife bootstrap 35.211.155.102 --ssh-user-name alma252 -i .chef/jmslave --sudo --node-name gce-jmslave
knife bootstrap 35.211.155.102 --ssh-user alma252 -i .chef/jmslave --sudo --node-name gce-jmslave
knife bootstrap 35.211.155.102 -U alma252 -i .chef/jmslave --sudo --node-name gce-jmslave
knife bootstrap 35.211.155.102 -U alma252 -i .chef/jmslave --sudo --node-name gce-jmslave -V -y
knife bootstrap 35.211.155.102 -U alma252 -i .chef/jmslave --sudo --node-name gce-jmslave -VV -y
knife bootstrap 35.211.155.102 --ssh-user alma252 -i .chef/jmslave --sudo --node-name gce-jmslave -VV -y
ssh -i .chef/jmslave alma252@35.211.155.102
cat .chef/jmslave
cat .chef/jmslave.pub 
ssh -i .chef/jmslave alma252@35.211.155.102
knife bootstrap 35.211.155.102 --ssh-user alma252 -i .chef/jmslave --sudo --node-name gce-jmslave -VV -y





https://api.chef.io/organizations/eurodrone/cookbooks

https://linuxacademy.com/community/posts/show/topic/22511-bootstrap-a-node-using-ssh-publicprivate-key-asking-sudo-pwd
https://docs.chef.io/chef_client_overview.html
http://blog.asquareb.com/blog/2014/06/09/basic-chef-knife-commands/
https://linoxide.com/linux-how-to/chef-workstation-server-node-centos-7/
https://www.itzgeek.com/how-tos/linux/centos-how-tos/setup-chef-12-centos-7-rhel-7.html
https://blog.andreev.it/?p=3522
https://docs.chef.io/knife_node.html 
https://docs.chef.io/knife_bootstrap.html
https://serverfault.com/questions/653543/chef-ssh-without-password




















