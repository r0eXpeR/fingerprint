Plugin.define do
name "Kayako-SupportSuite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "We offer all of our helpdesk solutions as licensed products (install and host it yourself) or as help desk hosting services."
website "http://www.kayako.com/"
dorks [
'"powered by Kayako eSupport"'
]
matches [
    {:regexp=>/<span class="smalltext"><font color="#333333">Powered by e(Support|SupportSuite)<br\/>Copyright &copy; 2001-[0-9]{4} Kayako Infotech Ltd.<\/font><\/span><br \/>/},
    {:search=>"headers[set-cookie]", :text=>"SWIFT_client"},
    {:text=>' - Powered By Kayako eSupport</title>'},
    {:text=>'<div id="bottomfooter" class="bottomfooterpadding"><a href="http://www.kayako.com" target="_blank" class="bottomfooterlink">Help Desk Software"'},
    {:text=>'Help Desk Software By Kayako eSupport'},
    {:text=>'Powered By Kayako eSupport'},
    {:version=>/<a href="http:\/\/www.kayako.com" target="_blank" title="Help Desk Software">Help Desk Software<\/a>&nbsp;by Kayako SupportSuite v([\d\.]+)/},
    {:version=>/<a href="http:\/\/www.kayako.com" target="_blank">Help Desk Software By Kayako eSupport v([\d\.]+)<\/a>/},
    {:version=>/<td width="144" align="left" valign="top"><span class="smalltext"><font color="#333333">([\d\.]+)<\/font><\/span><\/td>/},
    {:version=>/SWIFT\.Setup[^}]*"version":"([0-9\.]+)"/}
]
end
