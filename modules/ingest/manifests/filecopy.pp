class ingest::filecopy{
	

	 file{'oni-nfdump':

                path    => "/home/duxbury/oni-nfdump/",
                ensure  => directory,
                owner   => "duxbury",
                group   => "duxbury",
                mode    => "0744",
                recurse => true,
                force   => true,
                source  => "puppet:///modules/ingest/oni-nfdump/"


        }


          file{'rabbitmq':


                path    => "/home/duxbury/rabbitmq-server-3.5.3-1.noarch.rpm",
                ensure  => file,
                owner   => "duxbury",
                group   => "duxbury",
                mode    => "0744",
               # recurse => true,
                source  => "puppet:///modules/ingest/rabbitmq-server-3.5.3-1.noarch.rpm"


        }


	  file{'erlang':

                path    => "/home/duxbury/erlang-17.4-1.el6.x86_64.rpm",
                ensure  => file,
                owner   => "duxbury",
                group   => "duxbury",
                mode    => "0744",
               # recurse => true,
                source  => "puppet:///modules/ingest/erlang-17.4-1.el6.x86_64.rpm"


        }


}
