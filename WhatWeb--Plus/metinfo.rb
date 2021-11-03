Plugin.define do
name "MetInfo"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MetInfo"
website "http://www.metinfo.cn/"
dorks [
'"Powered by MetInfo"'
]
matches [
    {:regexp=>/<meta name="author" content="[^"]+--Powered by MetInfo">/},
    {:regexp=>/<meta name="copyright" content="Copyright 2008-20[\d]{2} MetInfo">/},
    {:text=>'/images/css/metinfo.css'},
    {:text=>'Powered by MetInfo'},
    {:text=>'content="MetInfo'},
    {:text=>'powered_by_metinfo'},
    {:url=>'/admin/templates/met/images/logosmall.gif', :md5=>'2820a3b690612fa7df88fc661178a8de'},
    {:url=>'/admin/templates/met/images/logosmall.gif', :md5=>'4e3c4a90556f8c35d4ab577e985239af'},
    {:url=>'/favicon.ico', :md5=>'2a9541b5c2225ed2f28734c0d75e456f'},
    {:url=>'/favicon.ico', :md5=>'5d07b471f93f3283731592af17b0bbe7'},
    {:url=>'/favicon.ico', :md5=>'8dc1e04ffcf4d86aaaedb49eeac653c1'},
    {:url=>'/job/templates/met/css/style.css', :md5=>'3d906218998f71e198808b7895c4dc96'},
    {:url=>'/job/templates/met/css/style.css', :md5=>'c025609c4c5838da506070f86b976cda'},
    {:url=>'/wap/templates/met/images/listico.gif', :md5=>'21530b0202a60b21f9207155d1d11411'},
    {:url=>'/wap/templates/met/images/listico.gif', :md5=>'f0560d4bac435da2cbd2729504ba3744'},
    {:version=>/Powered by <a href="http:\/\/www.MetInfo.cn" target="_blank" title="MetInfo enterprise website manager system"><b>[^<]+<\/b><\/a> ([\d\.]+)/}
]
end
