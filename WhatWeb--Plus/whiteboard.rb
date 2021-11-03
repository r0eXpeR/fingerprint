Plugin.define do
name "WhiteBoard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "WhiteBoard is a fast, powerful, and free open source discussion board solution."
website "http://sarosoftware.com/"
matches [
{ :text=>'			&copy; <a href="http://www.powerwd.com">SaroSoftware</a><br />', :certainty=>75 },
{ :version=>/Powered By WhiteBoard ([\d\.]+)<br \/>/ },
{ :version=>/Powered By WhiteBoard <span id="version">([\d\.]+)<\/span><br \/>/ },
]
end
