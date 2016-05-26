/* global isInNet, dnsResolve, myIpAddress, dnsDomainIs */
/* jshint strict:false */
function FindProxyForURL(url, host) {
/*
if (isInNet(dnsResolve(host), "10.0.0.0", "255.0.0.0") ||
isInNet(dnsResolve(host), "172.16.0.0", "255.240.0.0") ||
isInNet(dnsResolve(host), "192.168.0.0", "255.255.0.0") ||
isInNet(dnsResolve(host), "173.37.0.0", "255.255.0.0") ||
isInNet(dnsResolve(host), "127.0.0.0", "255.255.255.0") ||
dnsDomainIs(host, ".localdomain") || dnsDomainIs(host, ".lan") ||
dnsDomainIs(host, ".local") || dnsDomainIs(host, ".ap"))
return "DIRECT";
*/
  if(isInNet(dnsResolve(host), "0.0.0.0", "255.255.255.255") ||
      dnsDomainIs(host, "localhost"))
    return "DIRECT";
  else if (isInNet(myIpAddress(), "10.100.0.0", "255.255.0.0"))
    return "PROXY 10.100.0.1:8080";
  else if (isInNet(myIpAddress(), "10.90.0.0", "255.255.0.0"))
    return "PROXY 10.90.0.11:8080";
  else if (isInNet(myIpAddress(), "10.80.0.0", "255.255.0.0"))
    return "PROXY 10.80.0.11:8080";
  else if (isInNet(myIpAddress(), "10.70.0.0", "255.255.0.0"))
    return "PROXY 10.70.0.11:8080";
  else if (isInNet(myIpAddress(), "10.60.0.0", "255.255.0.0"))
    return "PROXY 10.60.0.11:8080";
  else if (isInNet(myIpAddress(), "10.50.0.0", "255.255.0.0"))
    return "PROXY 10.50.0.11:8080";
  else if (isInNet(myIpAddress(), "10.40.0.0", "255.255.0.0"))
    return "PROXY 10.40.0.11:8080";
  else if (isInNet(myIpAddress(), "10.30.0.0", "255.255.0.0"))
    return "PROXY 10.30.0.11:8080";
  else if (isInNet(myIpAddress(), "10.20.0.0", "255.255.0.0"))
    return "PROXY 10.20.0.11:8080";
  else if(dnsDomainIs(host, ".slack-msgs.com") ||
	  dnsDomainIs(host, ".github.com"))
    return "DIRECT";
  else
    return "PROXY 127.0.0.1:3128; DIRECT";
}
