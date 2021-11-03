Plugin.define do
name "Tilgin-Router"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Tilgin router"
website "http://www.tilgin.com/Products/"
dorks [
'"Welcome to the Tilgin router" "Status summary" intitle:VOOD -www.killmail.org'
]
matches [
{ :text=>'<H1 id="title">Welcome to the Tilgin router</H1>' },
{ :text=>'<TITLE>VOOD</TITLE>', :url=>"/" },
{ :text=>'<A href="/wizard/" class="" title="Wizard">Run wizard</A> for a quick and simple initial configuration.' },
{ :text=>'<A href="/status/" class="menuitem" title="Status">Status</A><SPAN class="separator"> </SPAN><A href="/help/" class="last menuitem" title="Help">Help</A>' },
{ :text=>'<LINK rel="stylesheet" type="text/css" href="/compressed-control.css">' },
]
passive do
	m=[]
	if @body =~ /<TABLE class="control">[\s]+<TBODY>[\s]+<TR>[\s]+<TD class="first">Product name:<\/TD>/
		if @body =~ /<TABLE class="control">[\s]+<TBODY>[\s]+<TR>[\s]+<TD class="first">Product name:<\/TD>[\s]+<TD class="last">([^\s]+)<\/TD>[\s]+<\/TR>[\s]+<TR>[\s]+<TD class="first">/
			m << { :model=>"#{$1}" }
		end
		if @body =~ /<TR>[\s]+<TD class="first">Software revision:<\/TD>[\s]+<TD class="last">([^\s]+)<\/TD>[\s]+<\/TR>[\s]+<TR>[\s]+<TD class="first">Connection:<\/TD>/
			m << { :firmware=>"#{$1}" }
		end
	end
	m
end
end
