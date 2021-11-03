Plugin.define do
name "Muster-Render-Farm"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Muster is a render farm management system for film production, game development, and visual effect industry."
website "http://www.vvertex.com/products.php"
dorks [
'intitle:"Muster" intitle:"Integrated Web server login"'
]
matches [
{ :text=>'<body onLoad="init_page()" name="muster_login" >' },
{ :url=>"/dologin.html", :version=>/<title>Muster ([\d]+) Integrated Web server login<\/title>/ },
{ :text=>'<applet code="FileFolderSelector.class" archive="FileFolderSelector.jar" CODEBASE="js" id="FileSelector" name="FileSelector" width="1" height="1">' },
{ :search=>"headers[server]", :version=>/^cias-muster([\d])$/ },
]
end
