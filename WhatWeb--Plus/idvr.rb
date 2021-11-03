Plugin.define do
name "iDVR"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "iDVR (formerly Devloution Security System) is a video surveillance system for the Linux/X11 platform."
website "http://code.google.com/p/idvr/"
dorks [
'intitle:iDVR -intitle:"com | net | shop" -inurl:"asp | htm | pdf | html | php | shtml | com | at | cgi | tv"'
]
matches [
    {:regexp=>/		monitorDiv.innerHTML = "<object id='monitorObject' style='display:none' classid='clsid:574B47E8-A366-4AB9-B2EA-57F145CA3780' codebase='lib\/monitor.cab#version=[\d]{1},[\d]{1},[\d]{1},[\d]{1}' VIEWASTEXT><\/object>";/},
    {:regexp=>/	  	'	  codebase="http:\/\/' + szDomainFull + '\/NSIDVRCtrlX.ocx#version=[\d]{1},[\d]{1},[\d]{1},[\d]{1}"\n'\+/},
    {:search=>"headers", :text=>'Server: iDVRhttpSvr'},
    {:search=>"headers", :text=>'iDVRhttpSvr'},
    {:text=>'		\'	  classid="clsid:16A017B9-6CB4-47C7-8E81-6E9396FAC2B6"\\n\' +'},
    {:text=>'<title>iDVR</title>'},
    {:text=>'iDVR'},
    {:text=>'name="iDVRForm'},
    {:url=>'/ui/idvr.png', :md5=>'bf46dcc4e9befbeaeba51e4406ec1d57'},
    {:version=>/<title>iDVR (.*)[\d\.]+ \(Build ([\d\.]+)\)<\/title>/, :offset=>1 }
]
end
