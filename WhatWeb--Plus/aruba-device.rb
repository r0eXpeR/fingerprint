Plugin.define do
name "Aruba-Device"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Aruba network device - web interface for router, access point, switch, etc"
website "http://www.arubanetworks.com/"
matches [
    {:regexp=>/<img src="\/images\/arubalogo\.gif" width="200" height="51"[\s]+alt="Aruba( Wireless)? Networks" title="Aruba( Wireless)? Networks"\/>/},
    {:string=>/<\/noscript>[\s]+<div id="system-info">[\s]+<ul>[\s]+<li>System Name : ([^<]+)<\/li>/},
    {:text=>'/images/arubalogo.gif'},
    {:text=>'<form id="login-form" method="post" autocomplete="off" action="/screens/wms/wms.login">'},
    {:text=>'Aruba Networks")'},
    {:url=>"/images/arubalogo.gif", :md5=>"0edcf58b30fccecb053a6e7d3e9846ad"},
    {:url=>"/images/arubalogo.gif", :md5=>"3dcb2475aa28fc1d685f863e79cc837f"}
]
end
