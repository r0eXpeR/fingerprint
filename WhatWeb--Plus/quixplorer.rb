Plugin.define do
name "QuiXplorer"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "QuiXplorer is a multi-user, web-based file-manager. It allows you to manage and/or share files over the internet, or an intranet."
website "http://quixplorer.sourceforge.net/"
dorks [
'"QuiXplorer" "Username" "Password" "the QuiX project"'
]
matches [
{ :version=>/<title>QuiXplorer ([^\s]+) - the QuiX project<\/title>/ },
{ :version=>/<A class="title" href="http:\/\/quixplorer\.sourceforge\.net" target="_blank">QuiXplorer ([^<]+)<\/A> - <A href="http:\/\/quix\.tk" target="_blank">the QuiX project<\/A><\/SMALL>/ },
{ :text=>'<A class="title" href="http://quixplorer.sourceforge.net" target="_blank">QuiXplorer</A> - <A href="http://quix.tk" target="_blank">the QuiX project</A></SMALL>' },
]
end
