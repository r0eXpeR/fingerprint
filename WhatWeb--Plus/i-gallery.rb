Plugin.define do
name "i-Gallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "i-Gallery is a complete online photo gallery. Easy to navigate thumbnails with paging. Enlarged views offer print & email buttons."
website "http://www.b-cp.com/igallery"
dorks [
'"powered by i-Gallery"'
]
matches [
    {:regexp=>/<img src="images\/igallery-logo.gif" width=[0-9]* height=[0-9]* border=[0-9]* alt="i-Gallery Home Page"><\/a><br>/},
    {:text=>'<!-- ################ Begin Empty Root Folder Message ################ -->'},

    {:text=>'<title>.::  - Photo Viewer ::.</title>', :path=>"ViewPhoto.asp"},
    {:text=>'href="igallery.asp'},
    {:text=>'i-Gallery'},
    {:text=>'var verify = confirm("Are you sure you want to permanently delete the selected \"Item\" from the i-Gallery database?  All information will be lost!");'},
    {:version=>/<font class="textsm">Powered By:&nbsp;<a class="linksm" href="http:\/\/www.b-cp.com\/igallery" target="_blank">i-Gallery ([\d\.]+)<\/a>/i},
    {:version=>/<title>.:: i-Gallery ([\d\.]+) -[^:]+:.<\/title>/}
]
end
