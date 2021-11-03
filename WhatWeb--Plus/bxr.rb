Plugin.define do
name "BXR"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "BXR is an interface to manage a Blosxom-Based blog through the web or XML-RPC. Current it supports blogger, and metaWeblog APIs."
website "http://sourceforge.net/projects/bxr/"
dorks [
'"BXR Web Login" intitle:"Please Enter Password"'
]
matches [
	{ :text=>'<meta name="generator" content="BXR::Web" />' },
	{ :version=>/<div class="bxrlogo">Powered by <a href="http:\/\/sourceforge.net\/projects\/bxr\/">BXR<\/a> ([\d\.]+)<\/div>/ },
]
end
