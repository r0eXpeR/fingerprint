Plugin.define do
name "VPON"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Video Picture on Net (VPON) is a remote video web server"
website "http://www.vpon21.com/"
dorks [
'inurl:"start.htm?scrw="'
]
matches [
{ :url=>"/ctrl_ver.js", :version=>/^var live_video_control_version ="([^"]+)";/ },
{ :url=>"/ctrl_ver.js", :model=>/^var vpon_platform = "([^"]+)";/ },
{ :search=>"headers[server]", :version=>/^VPON Server\/([\d\.]+)$/ },
]
end
