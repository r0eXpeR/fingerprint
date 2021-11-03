Plugin.define do
name "Symphony-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Symphony CMS - XSLT-powered open source content management system"
website "http://symphony-cms.com/"
dorks [
'"powered by Symphony"'
]
matches [
{ :text=>'	<title>Symphony | Login</title>' },
{ :text=>'<meta name="generator" content="Symphony CMS" />' },
{ :regexp=>/Powered by <a[^>]+href="http:\/\/www.symphony-cms.com[\/]?">Symphony CMS<\/a>/ },
{ :regexp=>/Powered by <a[^>]+href="http:\/\/symphony-cms.com[\/]?">Symphony CMS<\/a>/ },
{ :text=>'powered by <a href="http://www.symphony21.com">SYMPHONY</a>.' },
{ :text=>'Powered by <a href="http://symphony21.com/">Symphony</a>' },
{ :text=>'Powered by <a class="symphony" href="http://symphony21.com/">Symphony</a>' },
{ :text=>'Powered by <a class="symphony" href="http://symphony-cms.com/">Symphony</a>' },
{ :text=>'Site powered by <a href="http://www.symphony-cms.com" class="external">Symphony</a>' },
{ :text=>'Powered by <a href="http://symphony-cms.com/" rel="external">Symphony</a>' },
{ :version=>/Powered by <a[^>]+href="http:\/\/www.symphony-cms.com[\/]?">Symphony CMS ([\d\.]{1,3})<\/a>/ },
{ :version=>/Powered by <a[^>]+href="http:\/\/symphony-cms.com[\/]?">Symphony CMS ([\d\.]{1,3})<\/a>/ },
]
end
