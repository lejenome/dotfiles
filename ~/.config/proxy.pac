/* global isInNet, dnsResolve, myIpAddress, dnsDomainIs */
/* jshint strict:false */
function FindProxyForURL(url, host)
{
	if (isInNet(myIpAddress(), "10.30.0.0", "255.255.0.0"))
		return "PROXY 10.30.0.11:8080";
	if (isInNet(myIpAddress(), "10.100.0.0", "255.255.0.0"))
		return "PROXY 10.100.0.1:8080";
	if (isPlainHostName(host))
		return "DIRECT";
	return "PROXY 127.0.0.1:3128; DIRECT";
}
