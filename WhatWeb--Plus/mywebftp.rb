Plugin.define do
name "MyWebFTP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MyWebFTP web FTP client. MyWebFTP is designed for a professional web developer to do all your daily online file management tasks from one place. Install MyWebFTP on one of your websites, and it will allow you to quickly and efficiently manage files of all your websites via FTP."
website "http://mywebftp.com/"
dorks [
'intitle:mywebftp "Please enter your password" -intitle'
]
matches [
{ :certainty=>75, :text=>'<TITLE>MyWebFTP</TITLE>' },
{ :text=>'<FORM METHOD=post NAME="mwForm" ENCTYPE="multipart/form-data" ACTION="' },
{ :version=>/^<P><B>MyWebFTP (Hoster|Free)<\/B> Version ([\d\.]+)/, :offset=>1 },
{ :string=>/<BR>Copyright &copy 2000-(20[\d]{2}) <A HREF="http:\/\/www\.mywebftp\.com\/">MyWebFTP<\/A>/ },
{ :text=>'<LINK REL="stylesheet" TYPE="text/css" HREF=\'mwftp/common/mwftp.css\'>' },
{ :text=>'<SCRIPT LANGUAGE=JAVASCRIPT SRC=\'mwftp/common/mwftp.js\'></SCRIPT>' },
]
end
