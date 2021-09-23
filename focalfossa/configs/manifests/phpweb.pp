exec { 'apt-update':
  command => '/usr/bin/sudo apt-get update'
}

package { ['php7.4', 'php7.4-mysql']:
  require => Exec['apt-update'],
  ensure => installed,
}

exec { 'run-php7':
  require => Package['php7.4'],
  command => '/usr/bin/php -S localhost:80 &'
}

package { ['net-tools']:
  require => Exec['apt-update'],
  ensure => installed,
}
