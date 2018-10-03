#
# Cookbook:: hab_jump_node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

bash 'Install Git and Docker' do
    code <<-EOH
    sudo yum -y update
    sudo yum -y install git
    sudo yum -y install tree
    sudo yum -y install yum-utils device-mapper-persistent-data lvm2
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum -y install docker-ce
    sudo systemctl start docker
    sudo yum -y install nano
EOH
end

bash 'Install Hab' do
    code <<-EOH
    curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
    sudo groupadd hab
    sudo useradd -g hab hab
EOH
end
