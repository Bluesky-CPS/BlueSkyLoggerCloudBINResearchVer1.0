#!/bin/sh
export LD_LIBRARY_PATH=$(pwd)/SkyBlue/LCP/EDLoggingControl/LogDecompressor:${LD_LIBRARY_PATH}

#If do not pass a argument.
if [ ! "$1" ]; then
	java -Djava.library.path=$(pwd)/SkyBlue/LCP/EDLoggingControl/LogDecompressor -classpath Httpd.jar SkyBlue.LCP.EDLoggingControl.EDLCP 
else
	#If argument is not file data path. 
	if [ ! -f "$1" ]; then 
		java -Djava.library.path=$(pwd)/SkyBlue/LCP/EDLoggingControl/LogDecompressor -classpath Httpd.jar SkyBlue.LCP.EDLoggingControl.EDLCP 
	else
		java -Djava.library.path=$(pwd)/SkyBlue/LCP/EDLoggingControl/LogDecompressor -classpath Httpd.jar SkyBlue.LCP.EDLoggingControl.EDLCP -conf $1
	fi
fi
