#!/bin/sh
wget -O /etc/knot-resolver/list/minopallow.rpz https://git.kylz.nl/GitHub/DNSBlocklist/raw/branch/main/rpz/allowlist.rpz
wget -O /etc/knot-resolver/list/adguard-exceptions.rpz https://sos-ch-dk-2.exo.io/noblt/adguard/exceptions_rpz.txt
wget -O /etc/knot-resolver/list/adguard-dns.rpz https://sos-ch-dk-2.exo.io/noblt/adguard/dns_rpz.txt
wget -O /etc/knot-resolver/list/minopdeny.rpz https://git.kylz.nl/GitHub/DNSBlocklist/raw/branch/main/rpz/denylist.rpz
wget -O /etc/knot-resolver/list/energized-ultimate.rpz  https://block.energized.pro/ultimate/formats/rpz.txt
wget -O /etc/knot-resolver/list/pgl-adserver.rpz https://pgl.yoyo.org/adservers/serverlist.php?hostformat=rpz&showintro=1&mimetype=plaintext
wget -O /etc/knot-resolver/list/energized-social.rpz https://block.energized.pro/extensions/social/formats/rpz.txt
wget -O /etc/knot-resolver/list/energized-regional.rpz https://block.energized.pro/extensions/regional/formats/rpz.txt
wget -O /etc/knot-resolver/list/energized-xtreme.rpz https://block.energized.pro/extensions/xtreme/formats/rpz.txt
wget -O /etc/knot-resolver/list/1host-domains-pro.rpz https://sos-ch-dk-2.exo.io/noblt/1host/domains-pro_rpz.txt
wget -O /etc/knot-resolver/list/1host-wildcards-pro.rpz https://sos-ch-dk-2.exo.io/noblt/1host/wildcards-pro_rpz.txt
wget -O /etc/knot-resolver/list/urlhaus-abuse_ch.rpz https://urlhaus.abuse.ch/downloads/rpz
wget -O /etc/knot-resolver/list/minop-cname-cloaking.rpz https://sos-ch-dk-2.exo.io/noblt/adguard/cname-original_rpz.txt
wget -O /etc/knot-resolver/list/ad-cname-tracker.rpz https://sos-ch-dk-2.exo.io/noblt/adguard/cname-tracker_rpz.txt
wget -O /etc/knot-resolver/list/rpz-oisd.rpz https://rpz.oisd.nl/
exit
