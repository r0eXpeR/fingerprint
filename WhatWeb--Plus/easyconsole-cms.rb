Plugin.define do
name "EasyConsole-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "
Text, documents, media and virtually any type of information can be securely shared across your organization, your partners or clients through a web-based environment that consistently reflects your branding DNA."
website "http://www.easyconsole.com/web-content-management.html"
dorks [
'"powered by EasyConsole-CMS" inurl:"easyconsole.cfm" ext:cfm'
]
matches [
    {:certainty=>75, :ghdb=>'"Powered by EasyConsole CMS" inurl:"easyconsole.cfm" ext:cfm'},
    {:regexp=>/<!-- Powered by EasyConsole CMS, Copyright DW Dynamic Works LTD 2003 - 20[\d]{2} - http:\/\/www.easyconsole.com -->/},
    {:text=>'Powered by <a href="http://www.easyconsole.com'},
    {:text=>'Powered by EasyConsole CMS'}
]
end
