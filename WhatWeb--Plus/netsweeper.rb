Plugin.define do
name "Netsweeper"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Netsweeper provides internet content filtering and web threat management solutions that foster employee productivity, student safety and secure Internet access."
website "http://www.netsweeper.com/"
dorks [
'inurl:"8080/webadmin/deny/index.php"'
]
matches [
{ :text=>'<DIV id="overDiv" style="position:absolute; visibility:hidden; z-index:104;"></DIV>' },
{ :text=>'<div id="overDiv" style="position:absolute; visibility:hidden; z-index:104;"></div>' },
{ :text=>"<!-- Body of content starts here -->" },
{ :text=>"<BR><SPAN class='netsweepersmbtextatbottomofloginscreen'>" },
{ :text=>"<br><span class='netsweepersmbtextatbottomofloginscreen'>" },
{ :text=>"<!-- full_page_header.html START -->" },
{ :text=>"<!-- full_page_footer.html START-->" },
{ :text=>'<a target=_parent href="../" >Please click <u>here</u> to continue.</a>' },
{ :text=>'<a href="http://www.poweredbynetsweeper.com"><img src="http://www.poweredbynetsweeper.com/images/deny/global/poweredbynetsweeper.gif" border="0" alt="" align="top" /></a></td>' },
{ :text=>'<a href="http://www.poweredbynetsweeper.com"><img align=top border=0 src="http://www.poweredbynetsweeper.com/images/deny/global/poweredbynetsweeper.gif"></a>' },
]
passive do
	m=[]
	m << { :name=>"webadmin cookie" } if @headers["set-cookie"] =~ /webadmin=[a-z\d]{26}/
	m << { :name=>"Redirect location header" } if @headers["location"] =~ /\/webadmin\/deny\/index\.php\?dpid=[\d]+&dpruleid=[\d]+&/
	m
end
end
