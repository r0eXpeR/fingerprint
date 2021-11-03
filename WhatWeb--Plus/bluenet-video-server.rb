Plugin.define do
name "BlueNet-Video-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "BlueNet Video Server - video camera web interface"
dorks [
'intitle:"BlueNet Video Viewer"'
]
matches [
	{ :text=>"window.location.href='/cgi-bin/client_execute.cgi?tUD=0';" },
	{ :version=>/<title>BlueNet Video Viewer Version ([\d\.a-z]+)<\/title>/ },
]
end
