Plugin.define do
name "Zest-Web-Engine"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Zest Web Engine"
website "http://www.zest-leisure.com/"
dorks [
'inurl:/cgi-bin/web.asp'
]
matches [
{ :version=>/Powered by the <br \/><img src='http:\/\/www.[^\/]+\/images\/zestlogo\.gif' style='border:0 ; ' alt='Zest Web Engine' \/><br \/>Zest web engine<br \/>V([\d\.]+)<br \/>/ },
{ :search=>"headers[location]", :text=>"/cgi-bin/web.asp?title"},
{ :text=>"Powered by the <a href='http://www.zest-leisure.com/'>Zest Web Engine</a>"},
{ :version=>/Powered by the <a href='http:\/\/www.zest-leisure.com\/'>Zest Web Engine<\/a>[ ]+V ([0-9\.]+)</}
]
end
