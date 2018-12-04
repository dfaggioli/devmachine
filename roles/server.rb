name 'server'
description 'base config for server'
run_list [
  'recipe[apt]',
  'recipe[apt::unattended-upgrades]',
  'recipe[chef_client_updater]',
  'recipe[hardening]',
  'recipe[user]',
  'recipe[syncthing]'
]

default_attributes(
  'apt' => {
    'unattended_upgrades' => {
      'enable' => true,
      'mail' => 'gbagnoli@gmail.com',
      'remove_unused_dependencies' => true,
      'allowed_origins' => [
        '${distro_id}:${distro_codename}',
        '${distro_id}:${distro_codename}-security',
        '${distro_id}:${distro_codename}-updates',
        '${distro_id}:${distro_codename}-proposed',
        '${distro_id}:${distro_codename}-backports'
      ]
    }
  },
  'chef_client_updater' => {
    'version' => '14',
    'upgrade_delay' => 0
  },
  'os-hardening' => {
    'network' => {
      'forwarding' => true,
      'ipv6' => {
        'enable' => true
      }
    },
    'security' => {
      'kernel' => {
        'enable_module_loading' => true,
        'disable_filesystems' => %w[cramfs freevxfs jffs2 hfs
                                    hfsplus squashfs udf]
      }
    }
  },
  'ssh-hardening' => {
    'ssh' => {
      'server' => {
        'allow_tcp_forwarding' => 'yes',
        'allow_root_with_key' => true,
        'sftp' => {
          'enable' => true
        }
      }
    }
  },
  'user' => {
    'uid' => '4000',
    'gid' => '4000'
  }
)
