Plugin.define do
name "BlueNet-Video"
authors [
  "Andrew Horton", 

]
version "0.1"
description "BlueNet Video Server is an device that can stream CTV video over the internet. It uses an ActiveX plugin. Product listing - http://kelgor.net/kelcart/products/Bluenet-Video-Server.html"
website "http://www.batblue.com/themes/BatBlue/videos/BlueNETVideo.html"
dorks [ 'intitle:"BlueNet Video Viewer"' ]
matches [
    {:string=>"clsid:4A7C606D-03DB-4E91-9AB0-275F5A4599FD", :url=>'/cgi-bin/client_execute.cgi?tUD=0'},
    {:string=>"window.location.href='/cgi-bin/client_execute.cgi?tUD=0';"},
    {:text=>'/cgi-bin/client_execute.cgi?tUD=0'},
    {:text=>'BlueNet Video Viewer Version'},
    {:version=>/<title>BlueNet Video Viewer Version ([^<]+)<\/title>/, :url=>'/cgi-bin/client_execute.cgi?tUD=0'}
]
end
