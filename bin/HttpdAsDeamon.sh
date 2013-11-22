export LD_LIBRARY_PATH=SkyBlue/LCP/EDLoggingControl/LogDecompressor:${LD_LIBRARY_PATH} 

#If do not pass a argument.
if [ ! "$1" ]; then 
	nohup java -jar Httpd.jar >> /dev/null 2>&1
else
	#If argument is not file data path. 
	if [ ! -f "$1" ]; then 
		nohup java -jar Httpd.jar >> /dev/null 2>&1
	else
		nohup java -jar Httpd.jar -conf $1 >> /dev/null 2>&1
	fi
fi
