## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
	
	include ntp
	include base
#	include base::bashrc	
#	include base::useradd
#	include base::ssh_user
#	include base::duxbay
}

#ML node
node node1.oni.cloudwick.com {

	include base::sudo_dux
	include setup

}

#gateway node

node node5.oni.cloudwick.com {
		
#	include base::sudo_dux
#	include ingest	
# 	include ingest::filecopy
	include ingest::gcc
# 	include ingest::untar_setup
	include base
	include ingest::install
	include ingest::filecopy
#	include ingest::install_script
}


node node3.oni.cloudwick.com{
	include ingest::gcc
	include base
	include ingest::install
	include ingest::filecopy

}
node node4.oni.cloudwick.com{
	
#	include ingest
	include base
	include ingest::install
	include ingest::filecopy
}
