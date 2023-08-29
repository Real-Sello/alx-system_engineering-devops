# using Puppet to make changes to our configuration file

file_line { 'PasswdAuth':
  ensure => 'present',
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^#?PasswordAuthentication',
}

file_line { 'IdentityFile':
  ensure => 'present',
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^#?IdentityFile',
}
