class ingest::gcc {

	package{['gcc','gcc-c++']:

		ensure 	 => present,
		provider => yum,

	}

}
