Plugin.define do
name "Tickets-CAD-System"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tickets CAD System - Open Source Dispatch System"
website "http://www.ticketscad.org/"
dorks [
'intitle:"Tickets" "Welcome to Tickets - an Open Source Dispatch System"'
]
matches [
{ :text=>'<HEAD><TITLE>Tickets - Top Frame</TITLE>' },
{ :text=>'<HEAD><TITLE>Tickets - Login Module</TITLE>' },
{ :regexp=>/<NOFRAMES>\s+<BODY>\s+Tickets requires a frames-capable browser\.\s+<\/BODY>\s+<\/NOFRAMES>/ },
{ :version=>/<TITLE>Tickets ([^<]+)<\/TITLE>\s+<LINK REL=StyleSheet HREF="/ },
{ :text=>"<TR CLASS='even'><TD ROWSPAN=6 VALIGN='middle' ALIGN='left' bgcolor=#EFEFEF><BR /><BR />&nbsp;&nbsp;<IMG BORDER=0 SRC='open_source_button.png'>" },
]
end
