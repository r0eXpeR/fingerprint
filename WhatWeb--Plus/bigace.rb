Plugin.define do
name "BIGACE"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BIGACE is not just an easy to use Web Content Management System (CMS), but offers also a scripting API and an extensible architecture for developing, maintaining, and deploying applications."
website "http://www.bigace.de/"
dorks [
'"Powered by BIGACE" -dork'
]
matches [
    {:offset=>1, :search=>'body', :regexp=>/BIGACE ([\d.]+)/},
    {:regexp=>/(?:Powered by <a href="[^>]+BIGACE|<!--\s+Site is running BIGACE)/},
    {:text=>'Powered by <a href="http://www.bigace.de/" target="_blank">BIGACE</a>'},
    {:text=>'Site is running BIGACE'},
    {:text=>'content="BIGACE'},
    {:version=>/<!--[\r\n][\r\n]   Site is running BIGACE ([\d\.]+) [\r\n]        a PHP based Web CMS for MySQL[\r\n]             \(C\) Kevin Papst \(www.bigace.de\)[\r\n]/},
    {:version=>/<meta name="generator" content="BIGACE ([\d\.]+)"( \/)?>/},
    {:version=>/Powered by <a href="http:\/\/www.bigace.de\/"[^>]*>BIGACE ([\d\.]+)<\/a>/}
]
end
