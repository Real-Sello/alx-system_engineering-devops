# Puppet manifest that installs and configures an Nginx server

# Install Nginx package
package { 'nginx':
  ensure => installed,
}

# Configure Nginx server block
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  content => "
server {
    listen 80 default_server;
    server_name _;

    location / {
        root   /var/www/html;
        index  index.html;
    }

    location /redirect_me {
    return 301 http://${host}/;
    }
}
",
  require => Package['nginx'],
  notify  => Service['nginx'],
}

# Create index.html with "Hello World!" content
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Ensure Nginx service is running
service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}
