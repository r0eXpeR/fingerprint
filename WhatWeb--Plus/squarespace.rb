Plugin.define do
name "SquareSpace"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Bhavin Senjaliya", 

]
version "0.2"
description "A fully hosted, completely managed environment for creating and maintaining a website, blog or portfolio."
website "http://www.squarespace.com/"
matches [
    {:certainty=>75, :text=>"This site is completely powered by the Squarespace platform."},
    {:regexp=>/<!-- This is Squarespace\. -->/},
    {:search=>"headers[set-cookie]", :regexp=>/^SS_MID/, :name=>"SS_MID cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^WebPersCookie/, :name=>"WebPersCookie cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/^ss_sd/, :name=>"ss_sd cookie"},
    {:search=>'headers[x-servedby]', :regexp=>/squarespace/},
    {:text=>'new Squarespace.FixedPositionTip("Logout Successful", "You have been successfully logged out.", { xMargin: 15, yMargin: 15, icon: "/universal/images/helptip-info.png", orientation: "upper-right", viewportFixed: true, autoHide: 1800 }).show();'},
    {:url=>"favicon.ico", :md5=>"89cc5689b952ee12d13a68e98119183f"}
]
end
