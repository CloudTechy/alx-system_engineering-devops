# This Puppet manifest creates a file named "school" in the /tmp directory
# with the specified mode, group, owner, and content.

file { 'Creates File' :
  path    => '/tmp/school',
  mode    => '0744',
  group   => 'www-data',
  owner   => 'www-data',
  content => 'I love Puppet',
}
