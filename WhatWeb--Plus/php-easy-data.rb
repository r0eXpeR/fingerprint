Plugin.define do
name "PHPEasyData"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "PHPEasyData is a French Content Management System"
website "http://www.phpeasydata.com/"
dorks [
'"powered by PHPEasyData"'
]
matches [
{ :text=>"<div id='phpeasydata_container'  >" },
{ :text=>'  <head><title>PhpEasyData login page</title>' },
{ :version=>/<a[^>]*href="http:\/\/www.(phpeasydata.com|freewebmaster-scripts.com\/phpeasydata)[^>]*>PHPEasyData[\s]*([^<]+)<\/a>/ },
{ :version=>/n main de pages dynamiques. " target="_blank"[\s]*>PhpEasyData[\s]*([^<]+)<\/a><\/b>/ },
]
end
