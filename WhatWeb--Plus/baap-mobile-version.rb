Plugin.define do
name "BAAP-Mobile-Version"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The BAAP Mobile Version is a complete toolkit to help mobilize your WordPress site."
website "http://wordpress.org/extend/plugins/baap-mobile-version/"
matches [
    {:search=>"headers", :text=>'x-mobilized-by'},
    {:search=>"headers[x-mobilized-by]", :version=>/^BAAP Mobile Version ([^\s]+)$/}
]
end
