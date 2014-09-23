BLUESKY_PID=`ps aux | grep SkyBlue.LCP.Httpd.core.Httpd | awk '{print $2}'`
arr=(`echo $BLUESKY_PID`)
for i in ${arr[*]}; do
	echo $i
	sudo kill $i
done
