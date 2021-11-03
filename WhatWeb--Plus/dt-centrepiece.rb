Plugin.define do
name "DT-Centrepiece"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DT Centrepiece is a free open-source content management system (CMS) for commercial or personal use."
website "www.dt.net.nz/centrepiece/"
dorks [
'"powered by DT Centrepiece"'
]
matches [
    {:text=>'	<meta name="generator" content="DT Centrepiece - www.dt.net.nz/centrepiece/" />'},
    {:text=>'<a href="http://www.dt.net.nz/centrepiece/" target="_blank">Powered By DT Centrepiece</a>'},
    {:text=>'Powered By DT Centrepiece'},
    {:text=>'content="DT Centrepiece'}
]
end
