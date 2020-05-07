# frozen_string_literal: true

name "ubik"
maintainer "Giacomo Bagnoli"
maintainer_email "gbagnoli@gmail.com"
license "MIT"
description "Installs/Configures ubik"
long_description "Installs/Configures ubik"
version "0.1.0"

depends "user"
depends "pyenv"
depends "ruby_rbenv"
depends "java"
depends "git"
depends "debconf"
depends "sudo"
depends "ruby_build"
depends "yubico"

issues_url "https://github.com/gbagnoli/devmachine/issues"
source_url "https://github.com/gbagnoli/devmachine"
chef_version ">=14"
supports "ubuntu", ">= 18.04"
supports "debian", ">= 8.9"
