curl --silent --connect-timeout 2 "http://xml.weather.yahoo.com/forecastrss?p=TSXX0008&u=c" | grep -o -- temp=".*" | sed 's/temp="\([^"]*\)".*/\1/'
#cat /tmp/conky.temp.txt
