Plugin.define do
name "eXtreme-Message-Board"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "XMB is a lightweight PHP forum software with all the features you need to support a growing community."
website "http://www.xmbforum.com/"
dorks [
'"powered by XMB"'
]
matches [
    {:name=>'HTML comment',
  :version=>/^<!-- Powered by XMB ([\d\.]+) /},
    {:name=>'Powered by footer',
  :version=>/^Powered by XMB ([\d\.]+)<br \/>/},
    {:name=>'Title',
  :version=>/<title>[^<]+- Powered by XMB ([\d\.]+) /},
    {:regexp=>/<!-- Powered by XMB/},
    {:text=>'<!-- Powered by XMB '},
    {:text=>'<!-- The XMB Group -->'}
]
end
