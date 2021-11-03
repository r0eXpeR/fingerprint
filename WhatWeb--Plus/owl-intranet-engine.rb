Plugin.define do
name "Owl-Intranet-Engine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Owl is a multi user document repository (knowledge base) system written in PHP for publishing files/documents onto the web."
website "http://owl.anytimecomm.com"
dorks [
'"Owl Intranet Engine, Version Owl" "Username" "Password"'
]
matches [
{ :search=>"headers[set-cookie]", :regexp=>/owl_sessid=/ },
{ :version=>/<a class="version2" href="http:\/\/owl\.sourceforge\.net\/" target="_blank">Owl Intranet Engine, Version Owl ([^<]+)<\/a>/ },
{ :version=>/<title>[^<]+ Owl ([\d\.]+ [\d]{8})<\/title>/ },
]
end
