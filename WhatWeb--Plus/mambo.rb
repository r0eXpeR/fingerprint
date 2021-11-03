Plugin.define do
name "Mambo"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.6"
description "Mambo CMS (http://mambo-foundation.org)"
matches [
    {:regexp=>/<meta name="Generator" content="Mambo - Copyright 2000 - [0-9]+ Miro International Pty Ltd.  All rights reserved." \/>/},
    {:regexp=>/<meta name="description" content="Mambo - the dynamic portal engine and content management system" \/>/},
    {:regexp=>/Mambo/, :search=>'body'},
    {:url=>'README.php', :text=>'Mambo is OSI Certified Open Source Software, released under the GNU General Public License'},
    {:url=>'administrator/templates/mambo_admin/templateDetails.xml', :regexp=>/(<name>Mambo Admin<\/name>|<authorUrl>http:\/\/www\.mambo\-foundation\.org<\/authorUrl>)/}
]
passive do
	m=[]
	if @base_uri.path =~ /\/administrator\// and (@body =~ /<div id="mambo"><img src="[^"]*\/images\/header_text.png" alt="Mambo Logo" \/><\/div>/ or @body =~ /<a href="http:\/\/mambo-foundation.org">Mambo<\/a> is Free Software released under the GNU\/GPL License.<\/div>/ or @body =~ /<title>[^<]+ Administration \[Mambo( Open Source)?\]<\/title>/)
		m << { :name=>"Mambo Administration Page" }
	end
	if @body =~ /<\/html>.*(\n)*<!-- [0-9]+.*-->(\n)*\z/ and @body !~ /joomla/i
		m << {:name=>"seconds since epoch in html comment after </html>",:certainty=>25}
	end
	if @body =~ /<a href="[^"]*index.php\?option=(com_[^&^"]+)/
		m << { :certainty=>75, :module=>@body.scan(/<a href="https?:\/\/#{Regexp.escape(@base_uri.host)}[^"]*index.php\?option=(com_[^&^"]+)/) } if @body =~ /<a href="https?:\/\/#{Regexp.escape(@base_uri.host)}[^"]*index.php\?option=(com_[^&^"]+)/

		m << { :certainty=>75, :module=>@body.scan(/<a href="[^"^:]*index.php\?option=(com_[^&^"]+)/) } if @body =~ /<a href="[^"^:]*index.php\?option=(com_[^&^"]+)/
	end
	m << { :certainty=>75, :name=>"mosvisitor cookie" } if @headers["set-cookie"] =~ /mosvisitor=[0-9]+/ 
	m
end
aggressive do
	m=[]
	status,url,ip,body,headers=open_target(@base_uri.to_s+"/administrator/")
	if (body =~ /<div id="mambo"><img src="[^"]*\/images\/header_text.png" alt="Mambo Logo" \/><\/div>/ or body =~ /<a href="http:\/\/mambo-foundation.org">Mambo<\/a> is Free Software released under the GNU\/GPL License.<\/div>/ or body =~ /<title>[^<]+ Administration \[Mambo( Open Source)?\]<\/title>/)
		m << { :name=>"Mambo Administration Page" }
	end
	m
end
end
