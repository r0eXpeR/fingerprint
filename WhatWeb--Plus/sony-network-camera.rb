Plugin.define do
name "Sony-Network-Camera"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "SONY network video camera web interface"
website "http://www.sony.com/"
matches [
{ :text=>'	setWindowVar = window.open("/adm/file.cgi?next_file=setting.htm", "adminWin", setWinoptions);', :model=>["SNC-M"] },
{ :text=>'<TITLE>Server Push Viewer</TITLE>' },
{ :regexp=>/<FRAME SRC="bar.html" SCROLLING="NO" NAME="sonyhome[0-9]*" NORESIZE[\ MARGINHEIGHT="0-9"]* MARGINWIDTH="0">/i },
{ :model=>/<TITLE>Sony Network Camera ([0-9A-Z\-]+)<\/TITLE>/i },
{ :model=>/<TITLE>(SNC\-[R]?Z[0-9]+)<\/TITLE>/ },
{ :model=>/<TITLE>(SNC\-[R]?Z[0-9]+) HOME<\/TITLE>/ },
]
end
