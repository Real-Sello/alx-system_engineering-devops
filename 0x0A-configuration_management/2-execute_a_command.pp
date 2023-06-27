# Using Puppet to create a manifest that kills a process named killmenow

exec { 'killmenow':
  command     => 'pkill -f killmenow',
  path        => '/usr/bin',
  onlyif      => 'pgrep -f killmenow',
  refreshonly => true,
}
