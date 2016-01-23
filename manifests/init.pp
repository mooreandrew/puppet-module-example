# == Class: application
#
# Installs example
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class example () {


  file { '/tmp/puppet-example.txt':
    ensure  => file,
    mode    => '0644',
    content => 'It Worked!',
  }


}
