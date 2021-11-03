Plugin.define do
name "ZTE-IAD"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ZTE IAD (Integrated Access Device)"
website "http://wwwen.zte.com.cn/en/solutions/wireless/"
dorks [
'"Please login to continue" "Username" "Password" "ZTE Corporation" "All rights reserved"'
]
matches [
    {:certainty=>75, :search=>"headers[server]", :version=>/^Mini web server ([^\s]+) ZTE corp 20[\d]{2}\.$/},
    {:model=>"I202", :url=>"/image/I202.gif", :md5=>"68b697d421f07bf16f27ac0d44410f05"},
    {:model=>"I532", :url=>"/image/banner_I532.jpg", :md5=>"b7b298d358d9c0ae59224a1c3d3c5585"},
    {:model=>"ZXV10 I508C", :url=>"/image/banner_top.jpg", :md5=>"b968f243974f9e97b8a9e71bfaa25c83"},
    {:text=>'/image/I202.gif'},
    {:text=>'/image/banner_I532.jpg'},
    {:text=>'System Log In")'}
]
end
