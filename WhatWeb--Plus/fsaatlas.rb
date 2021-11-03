Plugin.define do
name "fsaATLAS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "fsaAtlas is an international student and scholar management system."
website "http://www.sungardhe.com/Solutions/fsaATLAS/"
dorks [
'intitle:"fsaATLAS Enterprise"'
]
matches [
{ :version=>/<title>fsaATLAS Enterprise v\.([^\s^<]+)<\/title>/ },
{ :version=>/<div style="position:absolute; width:100px; top:0px; right:0px"><img src="images\/fsaatlastext\.png" alt="fsaATLAS Enterprise v\.([^\s^"]+)"\/><\/div>/ },
{ :text=>'<form action="LoginFinish.asp" method="post" name="MainForm">' },
{ :text=>'<!-- AP - 06/02/2009 - Defect 1533 - Campus DataLink Link not appearing at the top navigation bar-->' },
]
end
