class ingest::install_script {

  file {
    'my_bash_script':
      ensure => 'file',
      source => 'puppet:///modules/ingest/scripts/install.sh',
      path => '/home/duxbury/install.sh',
      owner => 'root',
      group => 'root',
      mode  => '0744', # Use 0700 if it is sensitive
      notify => Exec['run_my_script'],
  }
  exec {
    'run_my_script':
     command => '/home/duxbury/install.sh',
     refreshonly => true,

 }

}
