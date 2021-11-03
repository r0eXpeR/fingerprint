Plugin.define do
name "openEngine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "openEngine - Content Management System (CMS)"
website "http://www.openengine.de/"
dorks [
'inurl:"cms/openengine" intitle:"openEngine"'
]
matches [
{ :text=>'<!-- openEngine Comment START -->' },
{ :regexp=>/<!--\[if lte? IE 7\]>[\s]+<script src="system\/([^\/^>]+\/)*script\/IE7\/ie7-standard-p\.js" type="text\/javascript"><\/script>/ },
{ :version=>/<p class="adminText" style="font-size:9px;">[\s]+openEngine ([^\s]+)( - [\d]+)? - Open Source Web Content Management System<br>/ },
{ :regexp=>/<a href="http:\/\/www\.openengine\.de" target="_blank"><img src="system\/([^\/^>]+\/)*\/img\/oes_logo\.png" alt="openEngine Homepage"><\/a><\/p>/ },
]
end
