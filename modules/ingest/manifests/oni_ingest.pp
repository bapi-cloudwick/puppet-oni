class ingest::oni_ingest {

         file{'oni-ingest':

                path    => "/home/duxbury/oni-ingest/",
                ensure  => directory,
                owner   => "duxbury",
                group   => "duxbury",
                mode    => "0744",
                recurse => true,
                force	=> true,
		source  => "puppet:///modules/ingest/oni-ingest/"


        }



}
