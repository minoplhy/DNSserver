# DOT DOH with haproxy

**[Mozilla ssl-config](https://ssl-config.mozilla.org/)**

**!!! denylist.rpz and allowlist.rpz are made for my _private_ use and will _cause_ problem with _some_ domain !!!**

```
Query
           Dns-over-TLS
          --------------------->  Haproxy(Frontend)    ----------------------------->  Knot-resolver
   Cluster                         Listen(TCP/443/853)                                 Listen(Local/dns)
          --------------------->            (HTTP/443) -------> m13253/DOH   ------->
	   Dns-over-HTTPS                                       Listen(Local/http)
```
# Server structure
```
    Server(or instances)
    |
    |----> Frontend-DOH (Haproxy 443 http TLS 1.3 strict-sni hdr/host/ ssl)
    |           |----> DOH (m13253/dns-over-https local)
    |                    |---------------------------------------------------------------| 
    |----> Frontend-DOT (Haproxy 443 853 tcp TLS 1.3 strict-sni ssl_fc_sni ssl)          v
                      |--------------------------------------------------------------> Dns Resolver (Knot-resolver dns local)
                      
```

# Recommendation
1. [knot-resolver](https://knot-resolver.cz) **Recommend** using upstream repository on debian
2. Download.sh **Recommend** if you want to download all the default filters used in kresd.conf(knot-resolver configuration)

# Mirror / Fork
[notabug.org](https://notabug.org/lottanorta/doh-dot-haproxy)
