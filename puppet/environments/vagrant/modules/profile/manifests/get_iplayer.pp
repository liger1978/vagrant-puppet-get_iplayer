class profile::get_iplayer(
){
  case $::osfamily {
    'RedHat': {
       package { 'epel-release': }
    }
  }
  class{ 'get_iplayer':
    listen_address => '0.0.0.0',
    listen_port    => '80'
  }
  firewall{ '100 allow http access':
    dport  => [80],
    proto  => tcp,
    action => accept,
  }

}