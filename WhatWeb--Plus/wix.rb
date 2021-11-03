Plugin.define do
name "Wix"
authors [
  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Wix is a cloud based website builder."
website "http://www.wix.com/"
matches [
    {:regexp=>/static\.parastorage\.com/, :search=>'body'},
    {:search=>"headers[set-cookie]", :regexp=>/^hs\s/, :name=>"hs cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/_wixAB3/, :name=>"_wixAB3 cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/svSession/, :name=>"svSession cookie"},
    {:search=>'body', :regexp=>/Wix\.com Website Builder/},
    {:search=>'headers[set-cookie]', :regexp=>/\.wix\.com/}
]
end
