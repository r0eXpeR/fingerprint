Plugin.define do
name "FluentNET"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "FluentNET, DotContent's powerful content management software, empowers business users to create, manage and publish web content for both general public access as well as internal use, and maximises the value of web-based information."
website "http://www.dotcontent.net"
dorks [
'"powered by FluentCMS from DotContent"'
]
matches [
    {:ghdb=>'"powered by FluentCMS from DotContent"', :certainty=>75},
    {:text=>'content="Fluent'},
    {:version=>/<meta name="GENERATOR" content="Fluent[CMS|NET]+ ([\d\.]+) /}
]
end
