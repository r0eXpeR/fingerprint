Plugin.define do
name "Car-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Car Portal is a powerful, professional looking and easy customizable php script for running auto classieds websites."
website "http://www.netartmedia.net/carsportal"
dorks [
'"Powered by Car Portal" "Frequently asked questions"'
]
matches [
    {:text=>'<div onmousedown="javascript:gSubmitForm()" class="main_form_search_button">SEARCH</div>'},
    {:text=>'Powered by <a href="http://www.netartmedia.net/carsportal">Car Portal</a>'},
    {:text=>'Powered by <a href="http://www.netartmedia.net/carsportal'},
    {:text=>'class="bodyfontwhite"><strong>&nbsp;Car Script'},
    {:version=>/<TD bgcolor="#000000" class="bodyfontwhite"><strong>&nbsp;Car Script v([^\s]+) by<br>/}
]
end
