Plugin.define do
name "phxEventManager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phxEventManager is an event resource calendar system designed to manage all aspects of an occasion."
website "http://phxeventmanager.com/"
dorks [
'intext:"Powered by phxEventManager" -intext'
]
matches [
{ :text=>'<td><div class="minicalmonth"><a href="/?y=' },
{ :certainty=>75, :text=>'<script type="text/javascript" src="pem-includes/xajax/xajax_js/xajax_core.js"></script>' },
{ :version=>/<div id="footer">\s+Copyright &copy; 20[\d]{2}[^\n]+\s+Powered by phxEventManager ([^<]+)<br \/>/ },
]
end
