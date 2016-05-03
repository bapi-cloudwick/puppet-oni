class base::duxbay{

        file{'/etc/duxbay.conf':

                ensure  =>  present,
                owner   =>  root,
                group   =>  root,
                source  =>  'puppet:///modules/base/duxbay.conf'

	}	
}

