#!/bin/bash
if [ -n "$(iw dev wlp8s0 station dump 2>/dev/null)" ]; then
	echo 100 - $(iw dev wlp2s0 station dump | grep signal: | sed 's/^.*-\(.\+\) .*$/\1/' ) | bc
	exit 0
elif [ -n "$(iw dev wlp8s1 station dump 2>/dev/null)" ]; then
	echo 100 - $(iw dev wlp2s0 station dump | grep signal: | sed 's/^.*-\(.\+\) .*$/\1/' ) | bc
	exit 0
elif [ -n "$(iw dev wlp2s0 station dump 2>/dev/null)" ]; then
	echo 100 - $(iw dev wlp2s0 station dump | grep signal: | sed 's/^.*-\(.\+\) .*$/\1/' ) | bc
	exit 0
elif [ -n "$(ip route show dev enp0s1u2 2>/dev/null)" ]; then
	curl --silent http://192.168.1.1/api/monitoring/status | grep -z -o "<SignalStrength>.*</SignalStrength>"| sed -z 's/<SignalStrength>\(.*\)<\/SignalStrength>/\1/'
	exit 0
fi
(networkctl status | head -1 | grep routable > /dev/null && echo 100) \
	|| echo 0
#connmanctl services $(connmanctl services | grep "^*" -m 1 | sed 's/^.* //') | awk  '$1 == "Strength" { print $3 }'
#dbus-send --system --print-reply --dest=org.ofono $(dbus-send --system --print-reply --dest=org.ofono / org.ofono.Manager.GetModems | grep "object path" | sed 's/.*"\(.*\)"/\1/') org.ofono.NetworkRegistration.GetProperties | grep "byte.*" -o | awk '{print $2}'
