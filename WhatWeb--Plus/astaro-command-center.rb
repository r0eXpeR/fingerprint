Plugin.define do
name "Astaro-Command-Center"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Astaro Command Center is a central management solution which provides direct access for application configuration, enables real-time system status surveillance and maintains device software and pattern updates."
website "http://www.astaro.com/"
dorks [
'intitle:"WebAdmin" "You have forgotten to enable JavaScript in your Browser!"'
]
matches [
    {:certainty=>75, :text=>'<script src="wfe/asg/js/_variables_from_backend.js?t='},
    {:text=>'/acc_aggregated_reporting.js'},
    {:text=>'/js/_variables_from_backend.js?'},
    {:text=>'<script src="wfe/acc/js/acc_aggregated_reporting.js?t='},
    {:url=>"/core/img/topbar/topbar_center.png", :md5=>"530834f021dab3082c36592e259404e6", :version=>"3.x"}
]
end
