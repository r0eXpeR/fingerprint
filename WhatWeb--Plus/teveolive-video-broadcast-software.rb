Plugin.define do
name "TeveoLive-Video-Broadcast-Software"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TeveoLive webcam - Homepage [offline]: http://www.teveo.com/"
matches [
{ :search=>"headers[server]", :regexp=>/^TeveoLive HTTP Server$/ },
{ :search=>"headers[xvideowidth]", :regexp=>/^\d+$/},
{ :search=>"headers[xvideoheight]", :regexp=>/^\d+$/},
]
end
