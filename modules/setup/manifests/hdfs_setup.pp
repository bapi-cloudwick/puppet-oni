class setup::hdfs_setup {

#		file{ '/home/duxbury/oni-setup-master/hdfs_script.sh':
#			  ensure => 'file',
#    			  source => 'puppet:///modules/setup/hdfs_setup.sh',
#    			  path   => '/home/duxbury/oni-setup-master/hdfs_setup.sh',
#    			  #owner  => 'root',
#    			  #group  => 'root',
#    			  mode   => '0744', # Use 0700 if it is sensitive
 #    			  notify => Exec['run_my_script'],

#		}->

		 exec {
   			 'run_my_script':
    			cwd		=>	"/home/duxbury/oni-setup-master/",
			path		=>	"/home/duxbury/oni-setup-master",
			command 	=> 	'./hdfs_setup.sh',
     			user		=>	"duxbury",	
			environment	=>	["HOME=/home/duxbury","PATH=/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/puppetlabs/bin:/home/duxbury/bin"],
		        #refreshonly 	=> 	true,
  		}

}
