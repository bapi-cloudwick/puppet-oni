class ingest::untar_setup {

	# file { '/home/duxbury/src/autoconf-2.69.tar.gz':
 	# source => 'puppet:///ingest/src/autoconf-2.69.tar.gz',
 	# notify => Exec['untar'],
	#	}	

	file { '/home/duxbury/copy/':
         ensure => 'directory',
         mode   => '1755',
         owner  => 'duxbury',
         group  => 'duxbury',
        }


	file { '/home/duxbury/copy/src/':
	  ensure => 'directory',
  	  mode   => '1755',
	  owner  => 'duxbury',
	  group  => 'duxbury',
	}

	exec { 'untar':
	  path	      => '/home/duxbury/copy/',
	  command     => 'tar -xvzf /home/duxbury/copy/src/autoconf-2.69.tar.gz',
	  cwd         => '/home/duxbury/copy/',
	  user        => 'duxbury',
	  require     => File["/home/duxbury/copy/"],
	  refreshonly => true,
	
	}

}
