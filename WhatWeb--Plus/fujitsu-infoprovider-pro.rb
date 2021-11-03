Plugin.define do
name "Fujitsu-InfoProvider-Pro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Fujitsu-InfoProvider-Pro web server"
website "http://software.fujitsu.com"
matches [
    {:search=>"headers", :text=>'Fujitsu-InfoProvider-Pro'},
    {:search=>"headers[server]", :regexp=>/Fujitsu-InfoProvider-Pro/},
    {:search=>"headers[server]", :version=>/Fujitsu-InfoProvider-Pro\/[V]?([^ ]+) /}
]
end
