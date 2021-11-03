Plugin.define do
name "iScripts-CyberMatch"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "iScripts CyberMatch is an open source online dating software with features like background check ,chat alerts, integrated payment system etc."
website "http://www.iscripts.com/cybermatch/"
dorks [
'"powered by iScripts CyberMatch" "A premium product from iScripts.com"'
]
matches [
{ :regexp=>/    <td width="[\d]+%" align="left" class="footer">Powered by <a href="http:\/\/www.iscripts.com\/cybermatch\/" target="_blank">iScripts Cybermatch<\/a> . A premium product from <a href="http:\/\/www.iscripts.com" target="_blank">iScripts.com<\/a><\/td>/ },
]
end
