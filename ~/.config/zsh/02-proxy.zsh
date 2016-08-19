proxy_on() {
	proxy_detect || return 1
	if [ -n "$proxy_username" ]; then
		export http_proxy=http://$proxy_username:$proxy_password@$proxy_ip:$proxy_port
	else
		export http_proxy=http://$proxy_ip:$proxy_port
	fi
	export https_proxy=$http_proxy
	export ftp_proxy=$http_proxy
	export rsync_proxy=$http_proxy
	export all_proxy=$http_proxy
	export HTTP_PROXY=$http_proxy
	export HTTPS_PROXY=$http_proxy
	export FTP_PROXY=$http_proxy
	export RSYNC_PROXY=$http_proxy
	export ALL_PROXY=$http_proxy
	export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com,.lan"
	#gsettings set org.gnome.system.proxy mode 'manual'
	#gsettings set org.gnome.system.proxy.http host 'proxy.localdomain.com'
	#gsettings set org.gnome.system.proxy.http port 8080
	#gsettings set org.gnome.system.proxy.ftp host 'proxy.localdomain.com'
	#gsettings set org.gnome.system.proxy.ftp port 8080
	#gsettings set org.gnome.system.proxy.https host 'proxy.localdomain.com'
	#gsettings set org.gnome.system.proxy.https port 8080
	#gsettings set org.gnome.system.proxy ignore-hosts "['localhost','127.0.0.0/8', '10.0.0.0/8', '192.168.0.0/16', '172.16.0.0/12' , '*.localdomain.com' ]"
	export GIT_PROXY_COMMAND=$proxy_on_path
	export _JAVA_OPTIONS="$_JAVA_OPTIONS
	-Dhttp.proxyHost=$proxy_ip
	-Dhttp.proxyPort=$proxy_port
	-Dhttps.proxyHost=$proxy_ip
	-Dhttps.proxyPort=$proxy_port"
	if [ -n "$proxy_username" ]; then
		export _JAVA_OPTIONS="$_JAVA_OPTIONS
	-Dhttp.proxyUser=$proxy_username
	-Dhttp.proxyPassword=$proxy_password
	-Dhttps.proxyUser=$proxy_username
	-Dhttps.proxyPassword=$proxy_password"
	fi
}
proxy_off() {
	unset http_proxy https_proxy ftp_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY
	unset GIT_PROXY_COMMAND rsync_proxy RSYNC_PROXY all_proxy ALL_PROXY
}

proxy_on_path=$0
proxy_username=11050096
proxy_password=lo66e3z9
proxy_ip=10.100.0.1
proxy_port=8080

proxy_detect() {
	case "$(ip route show | grep 'via ' | tail -1 | sed 's/.* via \([0-9.]*\) .*/\1/')" in
		10.20.0.11) proxy_ip=10.20.0.11 ;;
		10.30.0.11) proxy_ip=10.30.0.11 ;;
		10.40.0.11) proxy_ip=10.40.0.11 ;;
		10.50.0.11) proxy_ip=10.50.0.11 ;;
		10.60.0.11) proxy_ip=10.60.0.11 ;;
		10.70.0.11) proxy_ip=10.70.0.11 ;;
		10.80.0.11) proxy_ip=10.80.0.11 ;;
		10.90.0.11) proxy_ip=10.90.0.11 ;;
		10.100.0.1) proxy_ip=10.100.0.1 ;;
		192.168.20.1)
			proxy_ip=192.168.20.1
			proxy_port=3031
			unset proxy_username proxy_password
			;;
		*) proxy_ip= ; return 1
	esac
}

proxy_on


if [ "$#" -eq "2" ]; then
	#executed as ssh proxy command
	#corkscrew $proxy_ip $proxy_port $1 $2 ~/.ssh/fss-proxy
	socat - PROXY:$proxy_ip:$1:$2,proxyport=$proxy_port,proxyauth=$proxy_username:$proxy_password
	exit 0
fi
