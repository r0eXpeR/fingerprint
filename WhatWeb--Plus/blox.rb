Plugin.define do
name "BLOX"
authors [
  "Shuai Lin",

  "Bhavin Senjaliya", 

  "Andrew Horton", 

]
version "0.2"
description "BLOX is a cloud based CMS"
website "https://www.townnews365.com./"
matches [
	{:regexp => /BLOX CMS version: [\d.]+/},
	{ :search => "headers[set-cookie]", :regexp => /^TNNoMobile/, :name=>"TNNoMobile cookie" },
]
end
