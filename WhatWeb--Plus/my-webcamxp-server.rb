Plugin.define do
name "My-WebCamXP-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "WebCamXP web interface"
website "http://www.webcamxp.com"
dorks [
'"powered by webcamXP"',
'intitle:"my webcamXP server!" inurl:":8080"'
]
matches [
{ :text=>'<html><head><title>my webcamXP server!</title>' },
{ :text=>'			<h1><span>webcamXP 5</span></h1>' },
{ :text=>"newWindow = window.open(camstr, winstr, 'toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=' + width + ',height=' + height);" },
{ :text=>'<br><br><table border="1" cellpadding="0" cellspacing="0" bordercolor="#579A48"><tr><td><a href="http://www.webcamXP.com"><img src="http://www.darkwet.net/banners/webcamxp2.gif" width="88" height="31" border="0"></a>' },
{ :text=>'<html><head><title>webcamXP :: unauthorized access</title></head>' },
{ :version=>/<meta name="generator" content="webcamXP [^"]{0,15}v([\d\.]+)">/ },
{ :version=>/mXP.com" target="_blank">webcamXP 5<\/a> v([\d\.]+)/ },
{ :version=>/powered by <a href="http:\/\/www.webcamXP.com" target="_blank">webcamXP<\/a>[\ \d]* v([\d\.a-z\ ]+)<\/div>/ },
{ :version=>/<\/td><\/tr><\/table><br>powered by webcamXP PRO[\ \d]* v([\d\.]+)<br><br><br><\/font><\/center><\/body><\/html>/ },
{ :version=>/			powered by <a href="http:\/\/www.webcamxp.com" title="www.webcamxp.com">webcamxp 5<\/a> v([\d\.]+)/ },
{ :version=>/powered by <a href="http:\/\/www.webcamXP.com" target="_blank">webcamXP 5<\/a> v([\d\.]+)<\/a>/ },
]
end
