Plugin.define do
name "Uniform-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Uniform Server is a lightweight server solution for running a web server under the WindowsOS. Includes the latest versions of Apache2, Perl5, PHP5, MySQL5, phpMyAdmin."
website "http://www.uniformserver.com/"
dorks [
'intitle:"The Uniform Server" "Served Subdirectories" "Developed By The Uniform Server Development Team"'
]
matches [
{ :text=>'<div id="divider">Developed By <a href="http://www.uniformserver.com/">The Uniform Server Development Team</a></div>' },
{ :text=>'<meta name="Description" content="The Uniform Server 8.1.0-Coral." />' },
{ :version=>/<p style=" font-size:24px; margin: 0px; padding-top:10px">\s+The Uniform Server <br \/>\s+([^\s]+)\s+<\/p>/ },
{ :text=>'<div id="header"><a href="http://www.uniformserver.com"><img src="images/logo.jpg" align="left" alt="The Uniform Server" /></a>' },
]
end
