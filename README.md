Blue-sky Logger cloud binary execution file Ver1.0
===================================================
This is [Blue-sky](http://www.bluesky-cps.org) server binary files repository. The source code will be provided when you have a request.

Getting Started
---------------
* Clone the git

 `$> git clone https://github.com/not001praween001/BlueSkyLoggerCloudBINResearchVer1.0.git`

 `$> cd BlueSkyLoggerCloudBINResearchVer1.0`
 
* Edit the configure

 `$> curr=$(pwd)`
 
 `$> echo "WWWROOT_PATH = $curr/Inetpub" >> Httpd.cfg`
 
 `$>  sed -i -e 's/WWWROOT_PATH\ =\ ${REPOSITORY_ABSOLUTE_PATH}\/Inetpub/\ /g' Httpd.cfg`
  
* Execute the server by use "Httpd.sh"

	$> ./Httpd.sh
	
	For normaly executing.
	
	$> ./HttpAsDeamon.sh &
	
	For deamon executing.

You can extract redis source code included in this package for using with the Blue-skyLogger server. You can learn the detail of redis on [here](http://redis.io/). 
	
	$> tar -xvfz redis-2.6.9.tar.gz
	$> cd redis-2.6.9
	$> make


Author: Praween AMONTAMAVUT
