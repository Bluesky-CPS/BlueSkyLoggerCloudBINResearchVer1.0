Blue-sky Logger cloud binary execution file Ver1.0
===================================================
This is [Blue-sky](http://www.bluesky-cps.org) server binary files repository. Here is non-profit repository for education objective only. The source code will be provided anytime if you have a request.

Getting Started
---------------
- Clone the git

  ```$> git clone https://github.com/not001praween001/BlueSkyLoggerCloudBINResearchVer1.0.git```

  ```$> cd BlueSkyLoggerCloudBINResearchVer1.0/bin```
 
- Edit the configure

  ```$> curr=$(pwd)```

  ```$> echo "WWWROOT_PATH = $curr/Inetpub" >> Httpd.cfg```
 
  ```$> sed -i -e 's/WWWROOT_PATH\ =\ ${REPOSITORY_ABSOLUTE_PATH}\/Inetpub/\ /g' Httpd.cfg```
  
- Execute the Bluesky server

  For normaly executing shell.
	
  ```	$> ./Httpd.sh```

  For deamon executing shell.
	
  ```	$> ./HttpAsDeamon.sh &```
	
- Enjoy the environment

  If you has been prepared embedded devices ([Bluesky-Raspbian](https://github.com/not001praween001/Raspberry-Pi-CPS-SN-trial),etc.), you can enjoy the environment at your browser [here](http://127.0.0.1:8189).

- Web API table

  @see here [Web API Demo version1.0](www.bluesky-cps.org/Blue-skyLogger)

- Java API documents

  @see here [Java API documents](www.bluesky-cps.org/Blue-skyLogger/DemoVer1-APIDoc)

- About the redis

  The redis should be running before invoke the Bluesky server. If the redis has not been started, the Bluesky server will be automatically off the Key-Value Store database accessing feature. You can extract redis source code included in this package for using with the Bluesky server following method. You can learn more about the detail of redis [here](http://redis.io/). 

  ```	$> tar -xvfz redis-2.6.9.tar.gz```
	
  ```	$> cd redis-2.6.9```
	
  ```	$> make -j4```
	
  ```	$> cd ..```

  Then, start the redis.
	
  ```	$> ./startRedis.sh```

***Author***: *Praween AMONTAMAVUT*
