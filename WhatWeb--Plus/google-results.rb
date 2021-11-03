Plugin.define do
name "Google-Results"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "This plugin identifies Google search results pages and extracts the result URLs, query and number of results from the results."
website "http://www.google.com/"
matches [
	{ :module=>/<title>([^<]{1,256}) \- Google Search<\/title>/ },
	{ :module=>/Advanced search<\/a><\/div><div><div id=resultStats>([^<]{1,40}) results<nobr>/ },
]
passive do
	m=[]
	m << { :string=>@body.scan(/<li class=g><h3 class="r"><a href="([^\"^>]*)" class=l>/) } if @body =~ /<li class=g><h3 class="r"><a href="[^\"^>]*" class=l>/
	m
end
end
