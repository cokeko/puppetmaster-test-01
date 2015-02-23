node default {
  include puppet
  file { '/tmp/puppet-ip-10-1-165-117.txt':
    content => "Hello world",
  }
}
node 'kopuppet01' {
  include puppet
  file { '/tmp/hello.txt':
    content => "Hello world.\nHow;s Trix?\n"
  }
  include memcached
}
node 'kopuppet02' {
  include puppet
}
node 'puppet' {
  file { '/tmp/puppet.hi':
    content => 'Hi there.\n',
  }
}
	
