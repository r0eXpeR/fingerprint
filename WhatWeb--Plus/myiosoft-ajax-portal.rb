Plugin.define do
name "MyioSoft-Ajax-Portal"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "AjaxPortal is based on Sajax technology - an open source tool to make programming websites using the Ajax framework known as XMLHTTPRequest or remote scripting as easy as possible."
website "http://myiosoft.com/"
dorks [
'"powered by Ajax Portal"'
]
matches [
{ :version=>/      <td align="right"  style="padding:5px; background-color: #EDF2FB;" nowrap> Powered by <a href="http:\/\/myiosoft.com\/\?[\d\.]+">Ajax Portal ([\d\.]+)<\/a><\/td>/ },
]
passive do
	m=[]
	m << { :name=>"ajaxp cookie" } if @headers["set-cookie"] =~ /ajaxp=[0-9a-f]{20,32}/
	m
end
end
