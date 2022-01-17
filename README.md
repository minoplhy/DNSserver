# HaproxyDNS
Use Haproxy or NGINX as *Dns-over-HTTPS* | *DNS-over-TLS* | *DNSCrypt*(not Haproxy) | *Plain DNS* Server

**!!! denylist.rpz and allowlist.rpz are made for my _private_ use and will _cause_ problem with _some_ domain !!!**

> **denylist.rpz and allowlist.rpz now moved to dedicated repository but still cause problem**

```
Query
           Dns-over-TLS
          --------------------->  Haproxy(Frontend)    ----------------------------->  
Cluster                         Listen(TCP/443/853)                                 
          --------------------->            (HTTP/443) -------> m13253/DOH   ------->        Knot-resolver
	   Dns-over-HTTPS                                                                    Listen(global/dns)Listen(Local/dns)
	   DNSCrypt v2             
	   --------------------->  jedisct1/Encrypted DNS Server ------------------->
                                   Listen(TCP/UDP/8443)
```

or NGINX

```
Query
           Dns-over-TLS
          --------------------->  NGINX(Frontend)    ----------------------------->  
Cluster                         Listen(TCP/853)                                 
          --------------------->            (HTTP/443) -------> m13253/DOH   ------->        Knot-resolver
	   Dns-over-HTTPS                                                                    Listen(global/dns)Listen(Local/dns)
	   DNSCrypt v2             
	   --------------------->  jedisct1/Encrypted DNS Server ------------------->
                                   Listen(TCP/UDP/8443)
```

# Recommendation
1. [knot-resolver](https://knot-resolver.cz) **Recommended** using upstream repository on debian
2. download-filters.sh **Recommended** if you want to download all the default filters used in kresd.conf(knot-resolver configuration)
3. [jedisct1/Encrypted-dns-server](https://github.com/jedisct1/encrypted-dns-server) **Recommended** if you are looking for an easy way to start a DNSCrypt server
4. [Mozilla ssl-config](https://ssl-config.mozilla.org/) **Recommended** if you are looking for a sample TLS/SSL configuration for your Server Software
5. [AdGuardHome](https://github.com/adguardteam/adguardhome) or [Pi-hole](https://github.com/pi-hole/pi-hole) **Recommended** in case your blocklist are big {my big is around 10MB ++} and RAM is your limitation .
6. use [AdGuardHome](https://github.com/adguardteam/adguardhome) or [Pi-hole](https://github.com/pi-hole/pi-hole) instead of Knot-Resolver **Recommended** if you already forwarded all requests to Third-Party(e.g. quad9)
7. not open Port 53 to the world **Recommended** if your dns server is only for private use or internal use, cause you'll get chance of getting flood from unknown party

# Mirror / Fork
*Mirror n Fork Repository might not up-to-date with main repository*

[notabug.org](https://notabug.org/lottanorta/HaproxyDNS)

[codeberg.org](https://codeberg.org/DoulpaGllo/HaproxyDNS)
