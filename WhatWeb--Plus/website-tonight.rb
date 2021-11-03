Plugin.define do
name "WebsiteTonight"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Website Tonight CMS from GoDaddy"
website "https://www.godaddy.com/websites/website-builder"
matches [
	{ :search => "headers[set-cookie]", :regexp => /dps_site_id/, :name=>"dps_site_id cookie" },
] 
end
