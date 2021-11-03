Plugin.define do
name "Winstone"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Winstone is a servlet container that was written out of a desire to provide servlet functionality without the bloat that full J2EE compliance introduces."
website "http://winstone.sourceforge.net/"
matches [
{ :search=>"headers[server]", :version=>/^Winstone Servlet Engine v([^\s]+)/ },
{ :search=>"headers[x-powered-by]", :version=>/Servlet\/[^\s]+ \(Winstone\/([^\)]+)\)/ },
]
end
