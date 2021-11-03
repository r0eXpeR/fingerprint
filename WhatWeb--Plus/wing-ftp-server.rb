Plugin.define do
name "Wing-FTP-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Wing FTP server is a secure multi-protocol file server(FTP, HTTP, FTPS, HTTPS, SFTP) for Windows, Linux, Mac OSX and Solaris."
website "http://www.wftpserver.com/"
dorks [
'intitle:"Wing FTP Server Administrator" "The administration interface requires that you have Javascript enabled on your browser."',
'"The web client depend on JavaScript to function properly" intitle:"How do I enable JavaScript in my browser" inurl:help_javascript.htm'
]
matches [
{ :search=>"headers[server]", :string=>/^Wing FTP Server\/([\d\.]+)\(([^\)]*)\)$/, :offset=>1 },
{ :search=>"headers[server]", :string=>/^Wing FTP Server\(([^\)]*)\)$/ },
{ :search=>"headers[server]", :version=>/^Wing FTP Server\/([\d\.]+)\(([^\)]*)\)$/ },
{ :url=>"/help_javascript.htm", :text=>'<p>JavaScript is a scripting language that works with your browser to create interactive elements in web pages. The web client depend on JavaScript to function properly. </p>' },
]
end
