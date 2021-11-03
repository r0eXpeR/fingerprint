Plugin.define do
name "phpMyFAQ"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpMyFAQ - The FAQ system"
website "http://faq.phpmyfaq.de/"
dorks [
'intitle:"powered by phpMyFAQ"'
]
matches [
{ :version=>/<meta name="generator" content="phpMyFAQ ([\d\.]+)" \/>/ },
{ :version=>/<p id="copyrightnote">powered by <a href="http:\/\/www.phpmyfaq.de[\/]*" target="_blank">phpMyFAQ<\/a> ([\d\.]+)/ },
{ :md5=>"8390bf2d1fe24799bbd381d1b7d6d00b",  :url=>"template/favicon.ico" },
{ :md5=>"8390bf2d1fe24799bbd381d1b7d6d00b",  :url=>"template/default/favicon.ico" },
]
end
