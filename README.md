![Habitat](/images/hab.png)

# Habitat Jumpstart Training - Workstation

## Agenda for the Workshop
* Quick Introduction to Habitat 
* Log into your workshop Linux workstation
* Set up your Habitat Builder account
* Build deploy a Node.js application with Habitat
* Build deploy manage a Java/Tomcat application with Habitat
   * Bindings
   * Deploying
   * Building with Builder

## Required Pre-Setup
Each student will need the following:
* GitHub account https://github.com/
* Habitat Builder account (Can use GitHub) https://bldr.habitat.sh

## Setup
On your Windows jumphost , run the following commands:
```bash
$ git clone https://github.com/anthonygrees/hab_jump_node
$ cd hab_jump_node
$ kitchen converge
```

This will automatically set up and install Habitat on your `CentOS 7` workstation.  

## Connecting to your Workstation
If you used kitchen, then you can use it to ssh with this command:
```bash
$ kitchen login
```

Otherwise, in Windows, from `Cmnder` run the following:
```bash
$ ssh -i "C:\Users\chef\.ssh\id_rsa" centos@ec2-999-999-999-999.us-west-2.compute.amazonaws.com
```

Now run `hab --version` to check your Habitat version.

## Install Habitat
To install Habitat, run the following commands:
```bash
curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
sudo groupadd hab
sudo useradd -g hab hab
```

## Helpful Links
The following are helpful links for students:
* Workshop code - https://gist.github.com/anthonygrees/18d3893c8c874846b9f32ed807277047

