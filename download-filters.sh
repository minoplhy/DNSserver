#!/bin/sh
wget -O /etc/knot-resolver/list/minopallow.rpz https://github.com/minoplhy/dnsBlocklist/raw/main/rpz/allowlist.rpz
wget -O /etc/knot-resolver/list/minopdeny.rpz https://github.com/minoplhy/dnsBlocklist/raw/main/rpz/denylist.rpz
wget -O /etc/knot-resolver/list/energized-ultimate.rpz  https://block.energized.pro/ultimate/formats/rpz.txt 
wget -O /etc/knot-resolver/list/oisd.rpz https://rpz.oisd.nl
wget -O /etc/knot-resolver/list/pgl-adserver.rpz https://pgl.yoyo.org/adservers/serverlist.php?hostformat=rpz&showintro=1&mimetype=plaintext
wget -O /etc/knot-resolver/list/energized-social.rpz https://block.energized.pro/extensions/social/formats/rpz.txt
wget -O /etc/knot-resolver/list/energized-regional.rpz https://block.energized.pro/extensions/regional/formats/rpz.txt
wget -O /etc/knot-resolver/list/energized-xtreme.rpz https://block.energized.pro/extensions/xtreme/formats/rpz.txt
wget -O /etc/knot-resolver/list/blahdns.rpz https://oooo.b-cdn.net/blahdns/blahdns_rpz.txt
wget -O /etc/knot-resolver/list/urlhaus-abuse_ch.rpz https://urlhaus.abuse.ch/downloads/rpz
wget -O /etc/knot-resolver/list/minop-cname-cloaking.rpz https://github.com/minoplhy/dnsBlocklist/raw/main/rpz/cname-cloaking.rpz
wget -O /etc/knot-resolver/list/ad-cname-tracker.rpz https://noblt.sos-ch-dk-2.exoscale-cdn.com/adguard/cname-tracker.rpz
exit
