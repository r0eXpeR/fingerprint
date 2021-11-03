Plugin.define do
name "FatWire-Content-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "FatWire Content Server - previously known as Future Tense Content Server CMS"
website "http://www.fatwire.com/"
dorks [
'inurl:"servlet/Satellite?pagename="',
'inurl:"servlet/ContentServer?pagename="'
]
matches [
    {:certainty=>75, :text=>'An error occurred during processing. Check the info log.<br'},
    {:search=>"headers", :text=>'FutureTenseContentServer'},
    {:search=>"headers[host_service]", :version=>/^FutureTenseContentServer:([^\s]+)$/},
    {:text=>'<!-- this tag to be replaced with autogen stuff -->'},
    {:text=>'<b>Open Market, Inc.<br>&nbsp;ContentServer</b><hr>'},
    {:text=>'<h1>FatWire Corporation<br />&nbsp;Content Server</h1>'}
]
end
