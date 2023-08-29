# Puppet manifest that installs and configures an Nginx server

package { 'nginx':
  ensure => installed,
}

service { 'nginx':
  ensure  => running,
  enable  => true,
  require => Package['nginx'],
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
  require => Package['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => present,
  mode    => '0644',
  content => '
server {
    listen 80 default_server;
    listen [::]:80 default_server;

    server_name _;

    location /redirect_me {
        return 301 http://example.com/new_page;
    }

    root /var/www/html;
    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }
}
',
  notify  => Service['nginx'],
}

file { '/var/www/html/custom_404.html':
  content => 'Ceci n\'est pas une page',
  require => Package['nginx'],
}

file { '/etc/nginx/sites-available/default':
  ensure  => link,
  target  => '/etc/nginx/sites-enabled/default',
  require => File['/etc/nginx/sites-available/default'],
}

service { 'nginx':
  subscribe => File['/etc/nginx/sites-available/default'],
}
