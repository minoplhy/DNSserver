#!/bin/sh
wget -O /etc/knot-resolver/list/energized-ultimate.rpz  https://block.energized.pro/ultimate/formats/rpz.txt 
wget -O /etc/knot-resolver/list/oisd.rpz https://rpz.oisd.nl
wget -O /etc/knot-resolver/list/allowlist.rpz https://raw.githubusercontent.com/minoplhy/doh-dot-haproxy/main/filters/allowlist.rpz
wget -O /etc/knot-resolver/list/denylist.rpz https://raw.githubusercontent.com/minoplhy/doh-dot-haproxy/main/filters/denylist.rpz
wget -O /etc/knot-resolver/list/pgl-adserver.rpz https://pgl.yoyo.org/adservers/serverlist.php?hostformat=rpz&showintro=1&mimetype=plaintext
wget -O /etc/knot-resolver/list/energized-social.rpz https://block.energized.pro/extensions/social/formats/rpz.txt
wget -O /etc/knot-resolver/list/energized-regional.rpz https://block.energized.pro/extensions/regional/formats/rpz.txt
wget -O /etc/knot-resolver/list/blahdns.rpz https://oooo.b-cdn.net/blahdns/blahdns_rpz.txt
exit
