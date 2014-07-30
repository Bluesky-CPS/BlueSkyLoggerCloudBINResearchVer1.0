#!/bin/sh
export LD_LIBRARY_PATH=SkyBlue/LCP/EDLoggingControl/LogDecompressor:${LD_LIBRARY_PATH}

#If do not pass a argument.
if [ ! "$1" ]; then 
    java -cp .:lib/sqlite-jdbc-3.7.2.jar -classpath Httpd.jar:lib/sqlite-jdbc-3.7.2.jar SkyBlue.LCP.Httpd.core.Httpd
else
	#If argument is not file data path. 
	if [ ! -f "$1" ]; then 
		java -cp .:lib/sqlite-jdbc-3.7.2.jar -classpath Httpd.jar:lib/sqlite-jdbc-3.7.2.jar SkyBlue.LCP.Httpd.core.Httpd
	else
		java -cp .:lib/sqlite-jdbc-3.7.2.jar -classpath Httpd.jar:lib/sqlite-jdbc-3.7.2.jar SkyBlue.LCP.Httpd.core.Httpd -conf $1
	fi
fi
