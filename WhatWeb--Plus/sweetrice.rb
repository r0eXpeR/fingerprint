Plugin.define do
name "Sweetrice"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SweeRice is a simple website management system ,it is not just free and open source, it provides popular functions such as SEO."
website "http://www.basic-cms.org/"
dorks [
'"Powered By Basic CMS SweetRice" -dork'
]
matches [
{ :version=>/<meta name="generator" content="SweetRice ([\d\.]{1,5})" \/>/ },
{ :text=>'Powered By <a href="http://www.basic-cms.org">Basic CMS SweetRice</a>' },
]
end
