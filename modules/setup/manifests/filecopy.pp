class setup::filecopy{
	
	file{'oni-setup-master':
		
		path	=> "/home/duxbury/oni-setup-master/",
		ensure	=> directory,
		owner	=> "duxbury",
		group	=> "duxbury",
		mode	=> "0744",
		recurse	=> true,
		source	=> "puppet:///modules/setup/oni-setup-master/"
		
		
	}

}
