# Overview
This project automates the creation of Vagrant boxes I use for software development.  
This project focuses on creating a bare bones Red Hat Enterprise Linux 7 server box.
The expectation is that the output of this project gets fed into another Packer project
that enhances the box with additional software, such as Docker or MongoDB.

# Prerequisites
* a working [Packer](https://www.packer.io/) installation
* a working [Vagrant](https://www.vagrantup.com/) installation

## Custom VirtualBox Appliance
Currently, the process relies upon a VirtualBox appliance which was created by hand and is not
currently part of this project.  I did this because I needed to register the VM with my
Red Hat Developers account.  You will need to do the same using your own account.
For this to work, you must have `Maipo-x64-Server.ova` in the root directory.

# Building
Type `./build.sh` to build the server box.

# Installation
The scripts will automatically install the newly built boxes into Vagrant's cache
and publish them to Hashicorp's Atlas.

# Tips and Tricks

## Testing The Box
`vagrant up` will launch the server VM.
Once you are statisfied that the box built correctly, use `vagrant destroy` to remove it.

## Enhanced Versions
Enhancements to this box live in Git branches.  Explore the other branches of
this project to see what might be of interest to you, such as a Docker server
or a box with the Hashistack installed.

# Troubleshooting

# License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).
