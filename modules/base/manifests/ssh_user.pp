class base::ssh_user {

         ssh_authorized_key {  "root@cmanager.oni.cloudwick.com":
 	  ensure => present,
  	  user  => root,
    	  type  => "ssh-rsa",
   	  key	 => "AAAAB3NzaC1yc2EAAAABIwAAAQEAr+/RXWb3r8t5PM1P0D7RXGavr0lm0dNQYlVaAjAtwfGX3K9YPHl8N6vI4cohOiyreSMuv3w3L59o6lBbC2JSrkstmflxPitzGwvVvH8yjuz4i0FAsgiAvalbPf3nUiG9kIzJCrhU2Jq8xruZOpheqMVUzUEjjspK65hpxs83511bBDDst/ZwOr/KPtoLlYog6CgLc9hV3iBBBtjHWuhFWoNgCt5oen5tSTbwNdtgNGGhJPMwl4RmHQaEP4XtY4ZuBEbBdUWOGAAdhSxvgxmYAc1ACMr76bayW45rJ/x/plOi+zkLvLGKq8ftmoinZi/4Mex4aI2NV/eceFp46uhXVQ=="

	}

         ssh_authorized_key {  "root@pmaster.oni.cloudwick.com":
	   ensure => present,
  	   user  => root,
      	   type  => "ssh-rsa",
  	   key   => "AAAAB3NzaC1yc2EAAAABIwAAAQEAt0YEm2fR70eaagPItRTxVj7t0tUnoWvOsvqMxmlwS/FpCH+VCuI1/6o06bwcPhIcjqv3EdIgi0nmQMTHLeTVRZ945ZlG1EyCgzF0ITEuciJuAHLn83D37/KBfQhAO9uETGAIVGSnn6jt7BC4KdWOIKZmLjqvZHKIhnsWfk5Hn8Z+sAKNblG+zYkNT/GBZgUPpKUQcjOG9697fnfrIPSRdWwWcuAfjh8b54+5G6bxXRFIsgicosz34L9hQRVISY27BVvzmY3e+PYKThU+Ep6tk21sBO8HIv9GJpUMq0DC8in1BNZ4L5fXOWMsiElDDdCrMZaavh05ThMMFx+9Xaeuyw=="
	} 


       ssh_authorized_key {  "duxbury@node1.oni.cloudwick.com":
 	  ensure => present,
  	  user  => duxbury,
 	  type  => "ssh-rsa",
 	  key  => "AAAAB3NzaC1yc2EAAAABIwAAAQEA2uphXtPT7CSJ5I+sFIkY8r69agYCqg+VQndSEF6PNt5r+xPROhegl4pAPGmnrnD37PKXTj/qYlH8BozWxhVprZisGSHcECdWgbmW6QBYFRRzI0RE4UZmPw3RSF2MZjMqbmdB7G7WCgXn8hQElvCERvXQziBht6t3zN5ZAZYotYKSAwx8EEtxE+IUY+1NIWzS8mkWxwJvTwG+sMOmAO4PnLGj3I6/GGlPXw9PAxsn3P58Er2JejncnIrz9XuT2zb9HOQ30VcYkIbUNLGF1vAYacHWtFZcsc4f/yMLLOKIB15hLNadMlQH1jQ1R6eAiGixOhMZc4OKitMFIOncQdONSQ=="
	}

}
