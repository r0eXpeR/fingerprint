Plugin.define do
name "ClickTale"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Customer Experience Analytics by ClickTale - discover everything visitors do on your website. Watch Visitor Recordings, Mouse Move Heatmaps, and Form Analytics."
website "http://www.clicktale.com/"
matches [
    {:search=>'body', :regexp=>/\.clicktale\.net/},
    {:text=>'<div id="ClickTaleDiv" style="display: none;"></div>'},
    {:text=>'<div id="ClickTaleDiv'}
]
end
