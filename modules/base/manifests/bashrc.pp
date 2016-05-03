class base::bashrc {

	file{'/root/.bashrc':

		ensure	=>  present,
		owner   =>  root,
		group   =>  root,
		source   =>  'puppet:///modules/base/.bashrc'
	}

}
