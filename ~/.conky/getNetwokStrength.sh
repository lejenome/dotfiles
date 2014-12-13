#dbus-send --system --print-reply --dest=org.ofono $(dbus-send --system --print-reply --dest=org.ofono / org.ofono.Manager.GetModems | grep "object path" | sed 's/.*"\(.*\)"/\1/') org.ofono.NetworkRegistration.GetProperties | grep "byte.*" -o | awk '{print $2}'
echo 100 $(iw dev wlp8s0 station dump | grep signal: | sed 's/^.*\[\(.*\)].*$/\1/' ) | bc \
	|| connmanctl services $(connmanctl services | grep "^*" -m 1 | sed 's/^.* //') | awk  '$1 == "Strength" { print $3 }' \
	|| echo 0
