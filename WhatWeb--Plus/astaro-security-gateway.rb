Plugin.define do
name "Astaro-Security-Gateway"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Astaro Security Gateway - Unified Threat Management (UTF) Firewall device"
website "http://www.astaro.com/products/hardware-appliances"
dorks [
'intitle:"WebAdmin" "You have forgotten to enable JavaScript in your Browser!"'
]
matches [
    {:certainty=>75, :text=>'<script src="wfe/asg/js/_variables_from_backend.js?t='},
    {:text=>'/doc/astaro-license.txt'},
    {:text=>'/js/_variables_from_backend.js?t='},
    {:text=>'<script src="wfe/asg/js/app_selector.js?t='},
    {:text=>'wfe/asg/js/app_selector.js?t='},
    {:url=>"/core/img/topbar/topbar_center.png", :md5=>"2e6cdce49c669ec305b2d73eead50e4c", :version=>"8.x"}
]
end
