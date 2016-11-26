#!/bin/bash

export PACKER_LOG=activate
#export PACKER_LOG_PATH=/tmp

packer validate packer.json
packer build --force packer.json
vagrant box add --clean --force --name maipo-server-bare vagrant-bare/maipo-server-bare.box
vagrant box list
