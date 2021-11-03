Plugin.define do
name "Lyris-ListManager"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Lyris ListManager email marketing software is a secure, installed solution with email deliverability and reporting"
website "http://www.lyris.com/solutions/listmanager/"
dorks [
'inurl:lyris.pl filetype:pl'
]
matches [
{ :version=>/<!-- page: [^,]+, version: (Lyris )?ListManager(SQL)? (LINUX|WIN32) [^>]*version ([^-]+) - [A-Z][a-z]{2} [\d]{1,2} [\d]{4}( [\d]{2}:[\d]{2}:[\d]{2})?, interface:/, :offset=>3 },
{ :os=>/<!-- page: [^,]+, version: (Lyris )?ListManager(SQL)? (LINUX|WIN32) [^>]*version ([^-]+) - [A-Z][a-z]{2} [\d]{1,2} [\d]{4}( [\d]{2}:[\d]{2}:[\d]{2})?, interface:/, :offset=>2 },
{ :filepath=>/<!-- this page created by: '([^'^\(]+)', line: [\d]+, package: 'lweb' -->/ },
{ :version=>/<!-- (Lyris )?List[\s]*Manager (WIN32|LINUX) version ([^\/]+) (- [A-Z][a-z]{2} [\d]{1,2} [\d]{4})?( [\d]{2}:[\d]{2}:[\d]{2})?\/ lyrispg.pl version [^>]+ -->/, :offset=>2 },
{ :os=>/<!-- (Lyris )?List[\s]*Manager (WIN32|LINUX) version ([^\/]+) (- [A-Z][a-z]{2} [\d]{1,2} [\d]{4})?( [\d]{2}:[\d]{2}:[\d]{2})?\/ lyrispg.pl version [^>]+ -->/, :offset=>1 },
{ :regexp=>/<INPUT TYPE="hidden" NAME="check_code" VALUE="[^"^>]+">/ },
{ :text=>'<html><h3>This Lyris ListManager Server is currently unavailable.<br>' },
{ :text=>'<font face="Arial, Helvetica, sans-serif" color="#000000"><b><i>Main Menu</i></b></font><br>' },
]
end
