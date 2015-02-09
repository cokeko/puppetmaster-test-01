node 'puppet' {
  file { '/tmp/puppet.hi':
    content => 'Hi there.\n',
  }
}
node default {
  include puppet
  file { '/tmp/puppet-ip-10-1-165-117.txt':
    content => "Hello world",
  }
}
	
