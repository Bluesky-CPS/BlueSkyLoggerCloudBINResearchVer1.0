export LD_LIBRARY_PATH=bin/SkyBlue/LCP/EDLoggingControl/LogDecompressor:${LD_LIBRARY_PATH}

#If do not pass a argument.
if [ ! "$1" ]; then 
	#nohup java -jar Httpd.jar >> /dev/null 2>&1
	sudo sh -c "java -cp .:lib/sqlite-jdbc-3.7.2.jar:lib/java_websocket.jar -classpath Httpd.jar:lib/sqlite-jdbc-3.7.2.jar:lib/java_websocket.jar SkyBlue.LCP.Httpd.core.Httpd -deamon >> /dev/null 2>&1 &"
else
	#If argument is not file data path. 
	if [ ! -f "$1" ]; then 
		#nohup java -jar Httpd.jar >> /dev/null 2>&1
		sudo sh -c "java -cp .:lib/sqlite-jdbc-3.7.2.jar:lib/java_websocket.jar -classpath Httpd.jar:lib/sqlite-jdbc-3.7.2.jar:lib/java_websocket.jar SkyBlue.LCP.Httpd.core.Httpd -deamon >> /dev/null 2>&1 &"
	else
		#nohup java -jar Httpd.jar -conf $1 >> /dev/null 2>&1
		sudo sh -c "java -cp .:lib/sqlite-jdbc-3.7.2.jar:lib/java_websocket.jar -classpath Httpd.jar:lib/sqlite-jdbc-3.7.2.jar:lib/java_websocket.jar SkyBlue.LCP.Httpd.core.Httpd -conf $1 -deamon >> /dev/null 2>&1 &"
	fi
fi
