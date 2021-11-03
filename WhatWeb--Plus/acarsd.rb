Plugin.define do
name "acarsd"
authors [
  "Andrew Horton",

]
version "0.1"
description "acarsd is an Aircraft Communication Addressing and Reporting System (ACARS) decoder for a LINUX or Windows. It decodes ACARS transmissions collected from a radio scanner in real-time using sound cards. acarsd also provides realtime webserver."
website "http://www.acarsd.org/"
dorks [
'intitle:"RealTime Web ACARS" "ACARS decoder for Linux and Windows" "Help" "Map" "Reports" "Search"'
]
matches [
{ :search=>"headers[server]", :version=>/^acarsd\/([^\s]+)$/ },
{ :certainty=>75, :text=>'<meta name="author" content="KjM <acarsd@acarsd.org>">' },
{ :certainty=>75, :regexp=>/<title>[^<]*RealTime Web ACARS/ },
{ :certainty=>75, :text=>'<!-- MAIN PART OF WEBACARS -->' },
{ :string=>/<meta name="description" content="Realtime Web ACARS - [^\s]+ Location: ([^\.^\"^>]+)\./ },
]
end
