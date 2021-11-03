Plugin.define do
name "Snare"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Snare - Snare Server Remote Control web interface"
website "http://www.intersectalliance.com/projects/"
matches [
{ :search=>"headers[server]", :regexp=>/^SNARE\/([\d\.]+)$/ },
{ :search=>"headers[www-authenticate]", :regexp=>/Digest realm="SNARE"/ },
{ :version=>/<H2><CENTER>SNARE Version ([\d\.]+) Status Page<\/H2><\/CENTER>/ },
{ :certainty=>75, :text=>'<ADDRESS>Snare Server Remote Control facility</ADDRESS>' },
]
end
