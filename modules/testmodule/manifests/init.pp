class testmodule{

	file{'/home/duxbury/testmodule':

		ensure	=> directory,
		owner	=> duxbury,
		group	=> duxbury,
		mode	=> '0744',
		recurse	=> true,
		source	=> "puppet:///modules/testmodule/testdir/",
	}

}  
