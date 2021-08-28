#!/bin/sh
wget -O /etc/knot-resolver/list/minopallow.txt https://github.com/minoplhy/DNSBlocklist/raw/main/rpz/allowlist.rpz
wget -O /etc/knot-resolver/list/adguard-exceptions.txt https://sos-ch-dk-2.exo.io/noblt/RPZ/adguard/exceptions.txt
wget -O /etc/knot-resolver/list/minoplhy.txt https://github.com/minoplhy/filters/releases/download/latest/ucate_rpz.txt
wget -O /etc/knot-resolver/list/minopdeny.txt https://github.com/minoplhy/DNSBlocklist/raw/main/rpz/denylist.rpz
wget -O /etc/knot-resolver/list/minoplhyneto.txt https://github.com/minoplhy/filters/releases/download/latest/Veneto_rpz.txt
wget -O /etc/knot-resolver/list/energized-ultimate.txt https://energized.pro/ultimate/formats/rpz.txt
wget -O /etc/knot-resolver/list/minoplhyallowlist.txt https://github.com/minoplhy/filters/releases/download/latest/Allowlist_rpz.txt
exit
