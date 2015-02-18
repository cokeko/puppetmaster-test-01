node default {
  include git
  include puppet
  file { '/tmp/puppet-ip-10-1-165-117.txt':
    content => "Hello world",
  }
}
node kopuppet01 {
  include git
  include puppet
  file { '/tmp/hello.txt':
    content => "Hello world.\nHow;s Trix?\n"
  }
}
node 'puppet' {
  file { '/tmp/puppet.hi':
    content => 'Hi there.\n',
  }
}
	
