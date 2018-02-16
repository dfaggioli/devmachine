# frozen_string_literal: true

name 'user'
maintainer 'Giacomo Bagnoli'
maintainer_email 'gbagnoli@gmail.com'
license 'MIT'
description 'Installs/Configures user'
long_description 'Installs/Configures user'
version '0.1.0'

depends 'git'
depends 'gnome'
depends 'ssh_known_hosts'
depends 'sudo'
issues_url 'https://github.com/gbagnoli/devmachine/issues'
source_url 'https://github.com/gbagnoli/devmachine'
chef_version '>=12'
supports 'ubuntu', '>= 16.04'
supports 'debian', '>= 8.9'
