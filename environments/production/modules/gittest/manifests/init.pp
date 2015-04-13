class gittest {
  package { 'wget':
    ensure => installed,
  }
  file { '/root/.ssh/id_rsa':
    source => 'puppet:///modules/gittest/id_rsa.private',
    mode   => '0600',
  }
  file { '/root/.ssh/id_rsa.pub':
    source => 'puppet:///modules/gittest/id_rsa.public',
    mode   => '0600',
  }
  file { '/root/testrun':
    source => 'puppet:///modules/gittest/testrun',
    mode => 0700,
    owner => root
  }
  file { '/root/testrun_master':
    source => 'puppet:///modules/gittest/testrun_master',
    mode => 0700,
    owner => root
  }
}
