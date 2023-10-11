# Puppet manifest that fixes Apache returning a 500 error
exec { 'fix_Apache':
  command  => 'sed -i s/class-wp-locale.phpp/class-wp-locale.php/g /var/www/html/wp-settings.php',
  provider => 'shell'
}
