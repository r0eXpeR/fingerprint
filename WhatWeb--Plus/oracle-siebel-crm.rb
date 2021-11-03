Plugin.define do
name "Oracle-Siebel-CRM"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The world's most complete customer relationship management (CRM) solution, Oracle's Siebel CRM helps organizations differentiate their businesses to achieve maximum top-and bottom-line growth. It delivers a combination of transactional, analytical, and engagement features to manage all customer-facing operations."
website "http://www.oracle.com/us/products/applications/siebel/index.html"
dorks [
'filetype:swe inurl:start'
]
matches [
{ :md5=>"a28ebcac852795fe30d8e99a23d377c1", :url=>"/favicon.ico", :string=>"eService" },
{ :text=>"<html OT='SiebWebMainWindow'>" },
{ :text=>"<p>Scripting is used to manage data interactions between the Siebel server/Web Server and the User Interface. This requires JavaScript to be enabled  in the web browser </p>" },
{ :text=>'<body>The server you are trying to access is either busy or experiencing difficulties. Please close the Web browser, open a new browser window, and try logging in again.', :string=>"Temporarily Unavailable" },
{ :text=>'alert("Your session timed out because you were idle for too long.  Please log in again to resume.\nIf you had a Siebel attachment open, your changes may have been lost.  Please save the file locally, close it, and reattach it to the appropriate record.");' },
{ :text=>'<script language="javascript">top._swescript = window;</script>' },
{ :text=>'<!-- SWELogin.swt  -->' },
{ :text=>"<body onLoad=\"GotoUrl('start.swe?SWECmd=Start')\">", :string=>"eService" },
{ :text=>'</form><script language="javascript">var formObj = document.forms["RedirectForHost"];formObj.SWEHo.value=top.location.hostname;formObj.submit();</script></body></html>' },
]
passive do
	m=[]
	m << { :name=>"BIGipServerSiebel_EService_Prod Cookie" } if @headers["set-cookie"] =~ /BIGipServerSiebel_EService_Prod=[\d\.]+;/
	m << { :name=>"BIGipServerSIEBEL Cookie" } if @headers["set-cookie"] =~ /BIGipServerSIEBEL-80=[\d\.]+;/
	m << { :name=>"_sn Cookie" } if @headers["set-cookie"] =~ /_sn=[a-zA-Z0-9]{43}_; Version=1; Path=\//
	m << { :string=>@body.scan(/<input type[\s]*=[\s]*['"]?hidden["']? name[\s]*=[\s]*['"]?SWEView['"]? value[\s]*=[^\(]+\(([^\)]*)\)/).flatten } if @body =~ /<input type[\s]*=[\s]*['"]?hidden["']? name[\s]*=[\s]*['"]?SWEView['"]? value[\s]*=[^\(]+\(([^\)]*)\)/
	m
end
end
