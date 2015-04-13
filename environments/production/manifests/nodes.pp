node default {
  include puppet
  include security
  include git
  include gittest
  #include vim
  service { 'puppet':
    enable => true,
    ensure => running,
  }
  file { '/tmp/puppet-ip-10-1-165-117.txt':
    content => "Hello world",
  }
  class { 'vim':
    user	=> "root",
    home_dir	=> "/root",
  }
}
node 'kopuppet01' {
  include puppet
  file { '/tmp/hello.txt':
    content => "Hello world.\nHow;s Trix?\n"
  }
  file { '/home/ec2-user/bonehead':
    ensure => present,
    content => "Don't be one.\n",
  }
}
node 'kopuppet02' {
  include puppet
  file { '/tmp/puppet.hi':
    content => 'Hi there.\n',
  }
}
node 'kopuppet03' {
  include puppet
  file { '/tmp/puppet.hi':
    content => "Hi there, number 3.\n",
  }
}
node 'puppet' {
  include certsigner::aws
  file { '/tmp/puppet.hi':
    content => 'Hi there.\n',
  }
}
	
