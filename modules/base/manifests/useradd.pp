# Class: useradd
# ===========================
#
# Full description of class useradd here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'useradd':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class base::useradd {

#	include sudo

	group{'duxbury':
		ensure	=> present

	}->

	user{ 'duxbury':
                ensure    =>   present,
                shell     =>  '/bin/bash',
                home      =>  '/home/duxbury',
                groups	  =>  ['wheel','duxbury'],
	#	gid       =>  'wheel',
                managehome=>   true,
		password  => '$1$frTqWnB6$rPqWdHCuEyjwr6jVqA.zo/'
	}~>
	
	file {'/etc/sudoers':
                ensure  => present,
                owner   => root,
                group   => root,
                mode    => '0440',
                source  => "puppet:///modules/base/sudoers",
        }


 }
