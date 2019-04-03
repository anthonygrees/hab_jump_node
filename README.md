![Habitat](/images/hab.png)

# Habitat Jumpstart Training - Workstation

## Agenda for the Workshop
 Markup : * Quick Introduction to Habitat 
          * Log into your workshop Linux workstation
          * Set up your Habitat Builder account
          * Build deploy a Node.js application with Habitat
          * Build deploy manage a Java/Tomcat application with Habitat
            * Bindings
            * Deploying
            * Building with Builder

## Setup
On your Windows jumphost , run the following commands:
```bash
$ git clone https://github.com/anthonygrees/hab_jump_node
$ cd hab_jump_node
$ kitchen converge
```

This will automatically set up and install Habitat on your `CentOS 7` workstation.  

## Install Habitat
To install Habitat, run the following commands:
```bash
curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
sudo groupadd hab
sudo useradd -g hab hab
```

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
