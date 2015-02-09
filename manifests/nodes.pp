node 'puppet' {
  file { '/tmp/puppet.hi':
    content => 'Hi there.\n',
  }
}
	
