Plugin.define do
name "AMDSoFT"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CMS [Iranian]"
website "http://www.iranfairit.com/main/index.aspx"
dorks [
'"Powered by AMDSoFT" ext:aspx'
]
matches [
{ :regexp=>/style="color: aliceblue"><span style="color: gray">Powered\s+by<\/span> <\/span><a href="http:\/\/www\.iranfairit\.com">/ },
]
end
