Plugin.define do
name "SourceBans"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "SourceBans is a free global administration and banning system for Source engine based servers."
website "http://www.sourcebans.net/"
dorks [
'inurl:web_upload ext:php "steam"'
]
matches [
{ :version=>/		<a href="http:\/\/www.sourcebans.net" target="_blank"><img src="images\/sb.png" alt="SourceBans" border="0" \/><\/a><br\/>\n		<div id="footqversion">Version ([\d\.]+) <\/div>/ },
{ :text=>'		<a href="http://www.sourcebans.net" target="_blank"><img src="images/sb.png" alt="SourceBans" border="0" /></a><br/>' },
{ :regexp=>/<div class='dbg' id='[0-9a-f]{7}'><span style='font-weight:bold'>Table '[a-z]+\.sb_settings' doesn't exist<\/span> <br \/><br \/><span>SQL Query type: <\/span><span style='font-weight:bold'>EXECUTE<\/span><span><br \/><span>/ },
]
end
