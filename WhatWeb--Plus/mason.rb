Plugin.define do
name "Mason"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Mason is a powerful Perl-based templating system for generating HTML or other dynamic content."
website "http://www.masonhq.com/"
matches [
{ :search=>"headers[x-powered-by]", :regexp=>/HTML::Mason/ },
]
end
