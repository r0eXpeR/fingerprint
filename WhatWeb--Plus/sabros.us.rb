Plugin.define do
name "sabros_us"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "sabros.us  is a CMS to put your bookmarks online with folksonomy support; just like del.icio.us, but the big diference is you will have the complete control of the source code."
website "http://sabros.us/"
matches [
{ :text=>'	<title>sabros.us/' },
{ :text=>'		<p class="powered">powered by: <a title="sabros.us" href="http://sabros.us/">sabros.us</a></p>', :version=>"1.8" },
{ :text=>'		<p class="powered">powered by: <a title="sabros.us" href="http://sourceforge.net/projects/sabrosus/">sabros.us</a></p>', :version=>"1.7" },
{ :version=>/	<meta name="generator" content="sabros.us ([\d\.]+)" \/>/ },
]
end
