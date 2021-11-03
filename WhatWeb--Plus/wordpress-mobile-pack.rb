Plugin.define do
name "WordPress-Mobile-Pack"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The WordPress Mobile Pack is a complete toolkit to help mobilize your WordPress site."
website "http://wordpress.org/extend/plugins/wordpress-mobile-pack/"
matches [
{ :search=>"headers[x-mobilized-by]", :version=>/^WordPress Mobile Pack ([^\s]+)$/ },
]
end
