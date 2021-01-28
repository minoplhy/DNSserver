# HaproxyDNS
Use Haproxy as Dns-over-HTTPS DNS-over-TLS Server

**!!! denylist.rpz and allowlist.rpz are made for my _private_ use and will _cause_ problem with _some_ domain !!!**

```
Query
           Dns-over-TLS
          --------------------->  Haproxy(Frontend)    ----------------------------->  
Cluster                         Listen(TCP/443/853)                                 
          --------------------->            (HTTP/443) -------> m13253/DOH   ------->        Knot-resolver
	   Dns-over-HTTPS                                                                    Listen(Local/http)Listen(Local/dns)
	   DNSCrypt v2             
	   --------------------->  jedisct1/Encrypted DNS Server ------------------->
                                   Listen(TCP/UDP/8443)
```

# Recommendation
1. [knot-resolver](https://knot-resolver.cz) **Recommend** using upstream repository on debian
2. download-filters.sh **Recommend** if you want to download all the default filters used in kresd.conf(knot-resolver configuration)
3. [jedisct1/Encrypted-dns-server](https://github.com/jedisct1/encrypted-dns-server) **Recommend** if you are looking for an easy way to start a DNSCrypt server
4. [Mozilla ssl-config](https://ssl-config.mozilla.org/) **Recommend** if you are looking for a sample TLS/SSL configuration for your Server Software

# Mirror / Fork
[notabug.org](https://notabug.org/lottanorta/doh-dot-haproxy)

[codeberg.org](https://codeberg.org/DoulpaGllo/doh-dot-haproxy)
