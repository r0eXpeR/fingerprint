Plugin.define do
name "Swiki"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Swiki is a popular implementation of Ward Cunningham's WikiWikiWeb that runs under Comanche."
website "http://wiki.squeak.org/swiki/"
dorks [
'"powered by Squeak" "Squeak * :: Comanche * :: Swiki"'
]
matches [
{ :url=>"/defaultScheme/comSwiki.gif", :md5=>"81d538bed9f676fffbdaedb9d95cdbc1" },
]
passive do
	m=[]
	if @body =~ /<a href="http:\/\/minnow\.cc\.gatech\.edu\/swiki" title="ComSwiki: powered by Squeak"><img src="[^"^>]*\/defaultScheme\/comSwiki\.gif" border=0 width=277 height=88 alt="ComSwiki: powered by Squeak"><\/a><br>[\s]*<em>(Squeak [^\s]+) :: (Comanche [^\s]+) :: Swiki ([^\s]+)<\/em>/
		m << { :string=>"#{$1}" }
		m << { :string=>"#{$2}" }
		m << { :version=>"#{$3}" }
	end
	m
end
end
