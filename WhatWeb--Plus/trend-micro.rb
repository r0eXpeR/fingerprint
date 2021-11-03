Plugin.define do
name "Trend-Micro"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Trend Micro server - http://www.trendmicro.com/"
matches [
{ :search=>"headers[server]", :regexp=>/^Trend Micro$/ },
{ :search=>"headers[server]", :version=>/^Trend Micro ([^\s]+)$/ },
]
end
