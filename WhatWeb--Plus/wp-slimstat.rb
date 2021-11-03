Plugin.define do
name "WP-SlimStat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A lightwight but powerful real-time web analytics plugin for WordPress"
website "https://wordpress.org/extend/plugins/wp-slimstat/"
matches [
{ :search=>"headers[set-cookie]", :regexp=>/slimstat_tracking_code=[a-f\d]{32};/ },
]
end
