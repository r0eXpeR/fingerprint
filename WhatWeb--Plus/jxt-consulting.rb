Plugin.define do
name "JXT-Consulting"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "JXT Consulting specialises in building and designing recruitment websites and implementing social recruiting strategies for recruitment companies, utilising the benefits of facebook, twitter and LinkedIn."
website "http://www.jxt.com.au/"
dorks [
'"Powered by JXT Consulting"'
]
matches [
    {:regexp=>/Powered by <a href="http:\/\/(www\.)?jxt\.com\.au" target="_blank">JXT Consulting<\/a>/},
    {:string=>/<link rel="shortcut icon" href="\/GetWhitelabelFile\.aspx\?whiteLabelFileID=(\d+)"\s?\/>/},
    {:text=>'<!-- Dynamic white label meta content -->'},
    {:text=>'<a href="http://www.jxt.com.au" target="_blank">Powered by JXT Consulting</a>'},
    {:text=>'<div id="jxt-popup-wrapper">'},
    {:text=>'Powered by JXT Consulting'},
    {:text=>'id="jxt-popup-wrapper'}
]
end
