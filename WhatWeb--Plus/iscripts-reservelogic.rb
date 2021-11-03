Plugin.define do
name "iScripts-ReserveLogic"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iScripts ReserveLogic offers an online web based reservation system for the hospitality industry for service providers."
website "http://www.iscripts.com/reservelogic/"
dorks [
'"powered by iScripts ReserveLogic"'
]
matches [
    {:text=>'Powered by <a href="http://www.iscripts.com/reservelogic/" target="_blank">iScripts ReserveLogic</a> . A premium product from <a href="http://www.iscripts.com" target="_blank">iScripts.com</a></td>'},
    {:text=>'Powered by <a href="http://www.iscripts.com/reservelogic/'}
]
end
