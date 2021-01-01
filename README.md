# DOT DOH with haproxy
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
