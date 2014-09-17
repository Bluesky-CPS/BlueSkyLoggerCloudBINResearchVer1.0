Blue-sky Logger cloud binary execution file Ver1.0
===================================================
This is [Blue-sky](http://www.bluesky-cps.org) server binary files repository. I will release a server source code version in nearly day or if you request please contact me directly. 

Getting Started
---------------
* Clone the git

 `$> git clone https://github.com/not001praween001/BlueSkyLoggerCloudBINResearchVer1.0.git`

 `$> cd BlueSkyLoggerCloudBINResearchVer1.0`
 
* Edit the configure
 `$> pwd`

  Copy above path. 
  
 `$> vim Httpd.cfg`
 
  Replace `WWWROOT_PATH = ${REPOSITORY_ABSOLUTE_PATH}/Inetpub` to be `{To be paste the copied path}/Inetpub`
  
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
