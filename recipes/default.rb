#
# Cookbook:: hab_jump_node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
bash 'Do some chef pre-work' do
    code <<-EOH
    sudo yum update
    sudo yum install git
    sudo yum install tree
    sudo yum install yum-utils device-mapper-persistent-data lvm2
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    sudo yum install docker-ce
    sudo systemctl start docker
    curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
    sudo groupadd hab
    sudo useradd -g hab hab
EOH
end
