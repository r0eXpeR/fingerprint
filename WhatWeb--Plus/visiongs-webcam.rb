Plugin.define do
name "VisionGS-Webcam"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "VisionGS webcam web interface"
website "http://www.visiongs.de/"
matches [
{ :text=>'<title>VisionGS Webcam Software</title>' },
{ :text=>'  <!-- VisionGS Still Code Begin -->' },
{ :regexp=>/<a href="http:\/\/www.visiongs.de\/"><font [size="1"\ ]*face="Verdana, Arial, Helvetica, sans-serif"[\ size="1"]*>VisionGS/ },
]
end
