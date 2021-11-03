Plugin.define do
name "Jamroom"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Jamroom specializes in building web communities centered around media producers such as musicians, photographers, video enthusiasts and more - Jamroom gives you the capability to provide dozens of different services to your users."
website "http://www.jamroom.net/"
dorks [
'"Powered by Jamroom"'
]
matches [
    {:regexp=>/<a href="http:\/\/www.jamroom.net"><img src="[^"]*" alt="Powered by Jamroom - the Powerful Social Media Platform" title="Powered by Jamroom - the Powerful Social Media Platform" border="0"><\/a>/},
    {:text=>'<input type="text" name="search_string" class="jform s_input" style="width:300px;">'},
    {:text=>'<meta name="designer" content="Talldude Networks, LLC.">'},
    {:text=>'content="Jamroom'},
    {:text=>'content="Talldude Networks'},
    {:version=>/<meta name="generator" content="Jamroom ([\d\.]+)">/}
]
end
