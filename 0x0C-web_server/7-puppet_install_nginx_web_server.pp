# Puppet manifest that installs and configures an Nginx server

package { 'nginx':
  ensure => installed,
}

file_line { 'server_config':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'location /redirect_me { return 301 http://$host/; }',
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => [Package['nginx'], File['/etc/nginx/sites-available/default']],
}
