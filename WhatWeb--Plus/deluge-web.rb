Plugin.define do
name "Deluge-web"
authors [
  "Andrew Horton", 

]
version "0.1"
description "Deluge-web is a web interface to deluge, an open source, cross-platform BitTorrent client. Homepage - http://deluge-torrent.org/"
dorks [
'inurl:8112 intitle:deluge'
]
matches [
    {:text=>'Deluge: Web UI'},
    {:version=>/<title>Deluge: Web UI ([^<]+)<\/title>/}
]
end
