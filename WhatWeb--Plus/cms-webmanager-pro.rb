Plugin.define do
name "CMS-WebManager-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "CMS WebManager-Pro - is a software product for creating and maintaining websites of any complexity."
website "http://webmanager-pro.com/"
dorks [
'"powered by CMS WebManager-Pro"'
]
matches [
    {:text=>'Powered by <a style="color:#555555;" href="http://webmanager-pro.com/">CMS Webmanager-pro</a>'},
    {:text=>'content="Webmanager-pro'},
    {:text=>'href="http://webmanager-pro.com">Web.Manager'},
    {:version=>/<meta name="generator" content="Webmanager-pro v([\d\.]+)" \/>/}
]
end
