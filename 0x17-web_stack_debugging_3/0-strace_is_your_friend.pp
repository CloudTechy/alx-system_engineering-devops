# automated puppet fix on Apache is returning a 500 error

exec { 'Fix wordpress site':
  command  => 'sudo sed -i "s/.phpp/.php/" /var/www/html/wp-settings.php',
  provider => shell,
  notify => Service['apache2'],
}

service { 'apache2':
  ensure => 'running',
  enable => true,
  subscribe => Exec['Fix wordpress site'],
}

