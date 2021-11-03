Plugin.define do
name "TheHostingTool"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.3"
description "Free Open-Source hosting tool similar to cPanel"
website "http://thehostingtool.com/"
dorks [
'"powered by TheHostingTool"'
]
matches [
{ :version=>/<div id="footer">Powered by <a href="http:\/\/thehostingtool.com" target="_blank">TheHostingTool<\/a> ([\d\.]*)<\/div>/ },
]
passive do
	m=[]
	if @body =~ /<td> ([\d\.]+) \(<a href="\?page=status&sub=phpinfo">PHPInfo<\/a>\)<\/td>/
		version=@body.scan(/<td> ([\d\.]+) \(<a href="\?page=status&sub=phpinfo">PHPInfo<\/a>\)<\/td>/).flatten.first
		m << { :version=>"PHP:"+version }
	end
	if @body =~ /<td><strong>MySQL Version:<\/strong><\/td>[\r\n|\n]+<td> ([\d\.]+) <\/td>/
		version=@body.scan(/<td><strong>MySQL Version:<\/strong><\/td>[\r\n|\n]+<td> ([\d\.]+) <\/td>/).flatten.first
		m << { :version=>"MySQL:"+version }
	end
	if @body =~ /<td width="20%"><strong>Server OS:<\/strong><\/td>[\r\n|\n]+<td width="80%"> ([^\ ]+) <\/td>/
		version=@body.scan(/<td width="20%"><strong>Server OS:<\/strong><\/td>[\r\n|\n]+<td width="80%"> ([^\ ]+) <\/td>/).flatten.first
		m << { :version=>version }
	end
	if @body =~ /<td align="center"><strong>([^<]+)<\/strong><\/td>/
		modules=@body.scan(/<td align="center"><strong>([^<]+)<\/strong><\/td>/).flatten
		m << { :module=>modules }
	end
	m
end
end
