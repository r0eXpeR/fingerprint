Plugin.define do
name "Web-Wiz-Rich-Text-Editor"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Web Wiz Rich Text Editor"
website "http://www.richtexteditor.org/"
dorks [
'inurl:"RTE_popup_file_atch.asp" ext:asp'
]
matches [
{ :version=>/<a href="http:\/\/www\.richtexteditor\.org" target="_blank" style="font-size:10px">Web Wiz Rich Text Editor<\/a> version ([^<]+)<\/span><\/td>/ },
{ :version=>/<\!\-\-\/\/\s+\/\* [^\s]+\s+Software: Web Wiz Rich Text Editor\(TM\) ver\. ([^\s]+)/ },
{ :text=>'<form method="post" action="RTE_popup_file_atch.asp" name="frmImageInsrt">' },
]
end
