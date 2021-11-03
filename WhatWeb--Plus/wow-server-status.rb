Plugin.define do
name "WoW-Server-Status"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This lightweight PHP script will parse Blizzard's XML feed and display realm status on your Guild's web page. The output can be configured as text/HTML, a dynamically generated image or as a PHP array."
website "http://53x11.com/blog/2005/04/21/WoW-Server-Status-41.10"
matches [
{ :regexp=>/<img[^>]*src="wow_ss.php\?realm=/ }, 
]
passive do
	m=[]
	m << { :string=>"PHP/"+@body.scan(/<h3 style="color: green">Your GD Library \(version [\d\.]+\) appears to be capable of running WoW Server Status.<\/h3><br \/><h3 style="color: green">You are running PHP version ([\d\.]+).  Horray!<\/h3><br \/><h3 style="color: green">It appears that your server can run WoW Server Status.  Game on./).flatten.to_s } if @body =~ /<h3 style="color: green">Your GD Library \(version [\d\.]+\) appears to be capable of running WoW Server Status.<\/h3><br \/><h3 style="color: green">You are running PHP version ([\d\.]+).  Horray!<\/h3><br \/><h3 style="color: green">It appears that your server can run WoW Server Status.  Game on./
	m << { :string=>"GD/"+@body.scan(/<h3 style="color: green">Your GD Library \(version ([\d\.]+)\) appears to be capable of running WoW Server Status.<\/h3><br \/><h3 style="color: green">You are running PHP version [\d\.]+.  Horray!<\/h3><br \/><h3 style="color: green">It appears that your server can run WoW Server Status.  Game on./).flatten.to_s } if @body =~ /<h3 style="color: green">Your GD Library \(version ([\d\.]+)\) appears to be capable of running WoW Server Status.<\/h3><br \/><h3 style="color: green">You are running PHP version [\d\.]+.  Horray!<\/h3><br \/><h3 style="color: green">It appears that your server can run WoW Server Status.  Game on./
	m
end
end
