class ingest::install {
	
	package { 'byacc':

		ensure	=> 'present',
		provider=> 'yum',
	}

	 package { 'python-setuptools':

                ensure  => 'present',
                provider=> 'yum',


       }


        package { 'python-pip':

                ensure  => 'present',
                provider=> 'yum',


        }



        package { 'pika':

                ensure  => 'present',
                require =>  Package["python-pip"],
                provider=> 'pip',
        	environment=> "PATH=/usr/bin/",
       }

}
