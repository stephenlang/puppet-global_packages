# params.pp

class global_packages::params {

  case $osfamily {
    'RedHat': {
      $package_list = ['sysstat', 'git', 'screen', 'wget', 'curl', 'mtr', 'rcs', 'mlocate']
    }
    'Debian': {
      $package_list = ['sysstat', 'git', 'screen', 'wget', 'curl', 'mtr', 'rcs', 'mlocate']
    } 
    default: {
      fail("Unsupported osfamily: ${::osfamily} operatingsystem: ${::operatingsystem}, module ${module_name} only supports osfamily: RedHat and Debian")
    }
  }
}
