#!/bin/sh
export LD_LIBRARY_PATH=SkyBlue/LCP/EDLoggingControl/LogDecompressor:${LD_LIBRARY_PATH}

#If do not pass a argument.
if [ ! "$1" ]; then 
	java -jar Httpd.jar
else
	#If argument is not file data path. 
	if [ ! -f "$1" ]; then 
		java -jar Httpd.jar
	else
		java -jar Httpd.jar -conf $1
	fi
fi
