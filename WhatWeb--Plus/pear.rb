Plugin.define do
name "PEAR"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PEAR - PHP Extension and Application Repository - PEAR is a framework and distribution system for reusable PHP components."
website "http://pear.php.net/"
dorks [
'intitle:"PEAR :: PEAR_Info" "auto_discover"'
]
matches [
{ :string=>/<h2><a id="top0">([\d]+ Installed Packages), Channel / },
{ :module=>/<h2><a id="pkg_([^\s^\"]+)"><\/a><a/ },
{ :certainty=>75, :text=>'<title>PEAR :: PEAR_Info()</title>' },
{ :filepath=>/<tr class="v">\s+<td class="e">www_dir<\/td>\s+<td>([^<]+)<\/td>\s+<\/tr>/ },
]
end
