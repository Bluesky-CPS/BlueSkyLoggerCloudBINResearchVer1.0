Blue-sky Logger cloud binary execution file Ver1.0
===================================================
This is [Blue-sky](http://www.bluesky-cps.org) server binary files repository. Here is non-profit repository for education objective only. The source code will be provided anytime if you have a request.

Getting Started
---------------
- **Clone the git**
  ```shell
  git clone https://github.com/not001praween001/BlueSkyLoggerCloudBINResearchVer1.0.git
  cd BlueSkyLoggerCloudBINResearchVer1.0/bin
  ```
 
- **Edit the configure**
  ```shell
  curr=$(pwd)
  echo "WWWROOT_PATH = $curr/Inetpub" >> Httpd.cfg
  sed -i -e 's/WWWROOT_PATH\ =\ ${REPOSITORY_ABSOLUTE_PATH}\/Inetpub/\ /g' Httpd.cfg
  ```
  
- **Execute the Bluesky server**

  *For normaly executing shell.*
  ```shell
  ./Httpd.sh
  ```

  *For deamon executing shell.*
  ```shell
  ./HttpAsDeamon.sh
  ```
  
  *For stop all running servers.*
  ```shell
  ./stopAllAerver.sh
  ```
	
- **Enjoy the environment**

  You have to prepare the embedded devices before your enjoying the environment. If you has not preparing the embedded devices yet, you can see the preparing method at [here](https://github.com/not001praween001/Raspberry-Pi-CPS-SN-trial) for the [Bluesky-Raspbian](https://github.com/not001praween001/Raspberry-Pi-CPS-SN-trial), etc in order to prepare it well first. And then, you can enjoy your environment at your local browsing page from [here](http://127.0.0.1:8189).

The other references
---------------------

- **Web API table**

  @see [Web HTTP API (Demo version1.0)](http://www.bluesky-cps.org/Blue-skyLogger)

- **Java API documents**

  @see [Java API documents (Demo version1.0)](http://www.bluesky-cps.org/Blue-skyLogger/DemoVer1-APIDoc)

- **About the redis**

  The redis should be running before invoke the Bluesky server. If the redis has not been started, the Bluesky server will be automatically turn the Key-Value Store database accessing feature off. You can extract redis source code included in this package for using with the Bluesky server following method. You can learn more about the detail of redis [here](http://redis.io/). 
  ```shell
  tar -xvfz redis-2.6.9.tar.gz
  cd redis-2.6.9
  make -j4
  cd ..
  ```
  Then, start the redis.
  ```shell
  ./startRedis.sh
  ```

***Author***: *Praween AMONTAMAVUT*
