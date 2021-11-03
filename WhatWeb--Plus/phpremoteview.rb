Plugin.define do
name "phpRemoteView"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpRemoteView - web backdoor - allows users to browse the filesystem, edit files on the server, execute PHP code, or Shell commands, etc. Works on Windows and Unix servers"
website "http://php.spb.ru/remview/"
dorks [
'intitle:"phpRemoteView: " "perms"'
]
matches [
{ :certainty=>75, :filepath=>/<title>phpRemoteView: ([^<]+)<\/title>/ },
{ :version=>/<font size=1 style='Font: 8pt Verdana'>phpRemoteView &copy; Dmitry Borodin \(version ([\d]{4}-[\d]{2}-[\d]{2})\)<br>/ },
{ :certainty=>75, :text=>"'><font face=fixedsys size=+2>*</font></a><font size=5><b>Index of</b></font>" },
]
end
