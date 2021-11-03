Plugin.define do
name "RevSense"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "RevSense is an online pay per click ad-market. Publicise your ads to a large community using RevSense advertiser account."
website "http://www.revsense.com/"
dorks [
'"powered by RevSense" -Vulnerability'
]
matches [
{ :text=>'				<li><a href="http://www.revsense.com.au/"><strong>RevSense</strong> - Powered by RevSense Ads</a></li>' },
{ :text=>'	<!-- You cannot remove this powered by link without receiving permission from W3matter.com -->' },
{ :regexp=>/	<font size=1><a>Powered by Revsense &trade;<\/a> &copy; [0-9]{4} W3matter LLC<\/font>/ },
{ :regexp=>/	<font size=1><a href="http:\/\/www.w3matter.com">Powered by Revsense &trade;<\/a> &copy; [0-9]{4} W3matter LLC<\/font>/ },
]
end
