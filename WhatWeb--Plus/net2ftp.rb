Plugin.define do
name "net2ftp"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "net2ftp is a web based FTP client"
website "http://www.net2ftp.com/"
dorks [
'intitle:"net2ftp" "Clear cookies"',
'"Powered by net2ftp - a web based FTP client" intitle:"net2ftp - a web based FTP client" "Clear cookies"'
]
matches [
{ :certainty=>25, :text=>'<title>net2ftp - a web based FTP client</title>' },
{ :version=>/<!-- net2ftp version ([^\s]+) -->/ },
{ :text=>'<!-- End of net2ftp login form -->' },
]
end
