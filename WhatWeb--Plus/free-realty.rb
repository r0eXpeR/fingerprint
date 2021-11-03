Plugin.define do
name "Free-Realty"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Free Realty is primarily designed for real estate agents and offices to list properties on the internet."
website "http://freerealty.rwcinc.net/"
dorks [
'inurl:"propview.php" "equal housing logo This tool is Open Source and released under the GPL"'
]
matches [
{ :version=>/<!--FreeRealty ([^\s]+) -->/ },
{ :text=>'<font class="foot">This tool is Open Source and released under the <a href="http://www.gnu.org/copyleft/gpl.html">GPL</a></font>' },
{ :text=>'<!-- THUS ENDETH THE MAIN CONTENT -->' },
{ :text=>'<!-- HERE BEGINNETH THE FOOTER --><div class="foot">' },
]
end
