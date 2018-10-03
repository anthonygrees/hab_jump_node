#
# Cookbook:: hab_jump_node
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
bash 'Do some chef pre-work' do
    code <<-EOH
    sudo yum install git
    sudo yum install tree
    curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
    sudo groupadd hab
    sudo useradd -g hab hab
EOH
end
