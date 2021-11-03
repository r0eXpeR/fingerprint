Plugin.define do
name "CraftCMS"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Craft CMS"
website "http://craftcms.com/"
matches [
	{ :text => '<a id="poweredby" href="http://craftcms.com/" title="Powered by Craft CMS">', :name => "Admin-Login-Page"},
	{ :search => "headers[set-cookie]", :regexp => /CraftSessionId/, :name=>"CraftSessionId cookie" },
] 
end
