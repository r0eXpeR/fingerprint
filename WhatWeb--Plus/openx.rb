Plugin.define do
name "OpenX"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "OpenX (aka phpAdsNew) is an open-source ad server, with an integrated banner management interface and tracking system for gathering statistics. With OpenX you can easily rotate paid banners and your own in-house advertisements."
website "http://www.openx.org/"
dorks [
'intitle:OpenX "Welcome to OpenX" "Forgot your password" "Authentication"'
]
matches [
    {:regexp=>/https?:..[^.]*\.openx\.net/, :search=>'body'},
    {:regexp=>/https?:..[^.]*\.servedbyopenx\.com/, :search=>'body'},
    {:text=>'<body class="hasInterface hasGradient hasSidebar " onload="initPage();">'},
    {:text=>'<div id="oaHeaderBranding" class="brandingAdServer">OpenX</div>'},
    {:text=>'<span class="tab-s">Welcome to OpenX</span><br />'},
    {:version=>/<meta name="generator" content="OpenX v([^\s]+) - http:\/\/www\.openx\.org"( \/)?>/}
]
end
