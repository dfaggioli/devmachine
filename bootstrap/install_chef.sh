#!/bin/bash
set -eu
set -o pipefail

CHEF_WORKSTATION='https://packages.chef.io/files/stable/chef-workstation/0.18.3/ubuntu/20.04/chef-workstation_0.18.3-1_amd64.deb'
CWDEB='/tmp/chef-workstation.deb'
APTGET="sudo apt-get -y -o Dpkg::Options::=--force-confdef -o Dpkg::Options::=--force-confnew"

sudo apt-get update
$APTGET dist-upgrade
$APTGET install python3-pip rbenv git

if dpkg -l chef-workstation &>/dev/null; then
  echo "chef-workstation already installed, skipping"
else
  trap 'rm -rf $CWDEB' EXIT
  curl -L "$CHEF_WORKSTATION" -o "$CWDEB"
  sudo dpkg -i "$CWDEB"
fi
