Plugin.define do
name "Streamline-PHP-Media-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Streamline is a streaming media web application written in php."
website "http://streamline.sourceforge.net/about.php"
matches [
{ :text=>'                <div style="font-size: 10pt">A PHP Streaming Media Server</div>' },
{ :text=>'    <title>Streamline Media Installation Wizard</title>' },
{ :text=>'            &copy; 2003-2010 Streamline' },
{ :md5=>'10bf2f9eff6be7d5efd25ce6b70099f4', :url=>'images/streamline.png' }
]
end
