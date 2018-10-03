# Habitat Jumpstart Training - Workstation

## Setup
On your Windows jumphost , run the following commands:
```bash
$ git clone https://github.com/anthonygrees/hab_jump_node
$ cd hab_jump_node
$ kitchen converge
```

This will automatically set up and install Habitat on your `CentOS 7` workstation.  For your reference, it runs the following commands:
```bash
curl https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh | sudo bash
sudo groupadd hab
sudo useradd -g hab hab
```

## Connecting to your Workstation
In Windows, from `Cmnder` run the following:

```bash
$ ssh -i "C:\Users\chef\.ssh\id_rsa" centos@ec2-999-999-999-999.us-west-2.compute.amazonaws.com
```

Now run `hab --version` to check your Habitat version.
