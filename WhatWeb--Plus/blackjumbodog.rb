Plugin.define do
name "BlackJumboDog"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SapporoWorks BlackJumboDog provides server functions (HTTP, FTP, etc)"
website "http://www.spw02.sakura.ne.jp/spw/"
matches [
    {:search=>"headers", :text=>'BlackJumboDog'},
    {:search=>"headers[server]", :regexp=>/^BlackJumboDog$/},
    {:search=>"headers[server]", :version=>/^BlackJumboDog Version (.+)$/}
]
end
