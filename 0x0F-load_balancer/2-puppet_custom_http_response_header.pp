# Install and configure Nginx web server

# Update the package repository to ensure we have the latest package information
exec { 'update package repository':
  command  => 'apt-get update',
  user     => 'root',
  provider => 'shell',
}

# Install the Nginx web server package
package { 'nginx':
  ensure   => present,
  provider => 'apt',
}

# Configure a custom Nginx response header (X-Served-By: hostname)
file_line { 'add HTTP header for custom response':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'listen 80 default_server;',
  line   => 'add_header X-Served-By $hostname;',
}

# Start the Nginx service and enable it to start on boot
service { 'nginx':
  ensure  => 'running',
  enable  => true,
  require => Package['nginx'],
}
