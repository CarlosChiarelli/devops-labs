#!/bin/bash

# Upgrade System
apt-get update
apt-get -y upgrade

# Install Ansible
apt-add-repository --yes --update ppa:ansible/ansible
apt-get install -y ansible