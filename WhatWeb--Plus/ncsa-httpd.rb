Plugin.define do
name "NCSA-HTTPd"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "NCSA HTTPd"
website "http://web.archive.org/web/20071020024535/hoohoo.ncsa.uiuc.edu/docs/Overview.html"
matches [
{ :regexp => /^NCSA/,
  :search=>"headers[server]" },
{ :version => /^NCSA\/([\d\.]+)$/,
  :search => "headers[server]" },
]
end
