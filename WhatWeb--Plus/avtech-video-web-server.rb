Plugin.define do
name "AVTech-Video-Web-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Video web server front end"
website "http://www.avtech.com.hk/eng/CCTV_System_Networking_VWS.htm"
dorks [
'intitle:"VIDEO WEB SERVER" -intext intext:"Video Web Server" "Any time & Any where" username password'
]
matches [
    {:search=>"headers", :text=>'Server: AV-TECH'},
    {:text=>'--- VIDEO WEB SERVER ---'},
    {:text=>'/AV732E/setup.exe'},
    {:text=>'<input type="button" name="Download" value="Download AP" class="button" onClick="MM_goToURL(\'parent\',\'ftp://211.22.74.18/AV732E/setup.exe\');return document.MM_returnValue" title="Download AP">', :version=>"AVC732E"},
    {:text=>'<input type="submit" name="Download" value="Download AP" class="button" onClick="MM_goToURL(\'parent\',\'ftp://211.22.74.18/AV733/setup.exe\');return document.MM_returnValue" title="Download AP">', :version=>"AVC733"},
    {:text=>'<title>--- VIDEO WEB SERVER ---</title>'}
]
end
