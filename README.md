Blue-sky Logger cloud binary execution file Ver1.0
===================================================
This is [Blue-sky](http://www.bluesky-cps.org) server binary files repository. The source code will be provided when you have a request.

Getting Started
---------------
- Clone the git

 `$> git clone https://github.com/not001praween001/BlueSkyLoggerCloudBINResearchVer1.0.git`

 `$> cd BlueSkyLoggerCloudBINResearchVer1.0`
 
- Edit the configure

 `$> curr=$(pwd)`
 
 `$> echo "WWWROOT_PATH = $curr/Inetpub" >> Httpd.cfg`
 
 `$>  sed -i -e 's/WWWROOT_PATH\ =\ ${REPOSITORY_ABSOLUTE_PATH}\/Inetpub/\ /g' Httpd.cfg`
  
- Execute the server by use "Httpd.sh"

-- For normaly executing shell.
	
	$> ./Httpd.sh

-- For deamon executing shell.
	
	$> ./HttpAsDeamon.sh &
	
- Enjoy the environment

If you has been prepared embedded devices ([Bluesky-Raspbian](https://github.com/not001praween001/Raspberry-Pi-CPS-SN-trial)), you can enjoy the environment at your browser [here](http://127.0.0.1:8189).

- About the redis

The redis should be running before invoke the Bluesky server. If the redis has not been started, the Bluesky server will be automatically off the Key-Value store database accessing. You can extract redis source code included in this package for using with the Bluesky server following method. You can learn the detail of redis on [here](http://redis.io/). 

	$> tar -xvfz redis-2.6.9.tar.gz
	
	$> cd redis-2.6.9
	
	$> make -j4
	
	$> cd ..

Then, start the redis.
	
	$> ./startRedis.sh

Author: Praween AMONTAMAVUT
