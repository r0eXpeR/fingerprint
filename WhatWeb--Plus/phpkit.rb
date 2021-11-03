Plugin.define do
name "PHPKIT"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHPKIT WCMS - Web content management system to easily create your personal homepage, blog or business website."
website "http://www.phpkit.com/"
dorks [
'"PHPKIT ist eine eingetragene Marke der mxbyte GbR"',
'"Diese Website wurde mit PHPKIT WCMS erstellt"'
]
matches [
{ :regexp=>/<meta name="generator" content="PHPKIT WCMS \- Web Content Managment System \- mxbyte GbR copyright [\d]{4}\-[\d]{4}" \/>/ },
{ :regexp=>/<meta name="generator" content="PHPKIT WCMS Web Content Management System" \/>/ },
{ :text=>'<meta name="author" content="PHPKIT WCMS - Web Content Management System - Copyright mxbyte GbR" />' },
{ :text=>'<div id="pkcopyright"><a class="none" href="http://www.phpkit.com">PHPKIT ist eine eingetragene Marke der mxbyte GbR &copy;' },
{ :text=>'<meta name="description" content="PHPKIT, WCMS, Web Content Management System, Administration" />', :module=>"Admin Page" },
]
end
