Plugin.define do
name "DoceboLMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "DoceboLMS is a SCORM compliant Open Source e-Learning platform used in corporate, government and education markets."
website "http://www.docebo.org/doceboCms/index.php"
dorks [
'"Powered by Docebo"'
]
matches [
    {:certainty=>25, :version=>/<title>DoceboCore ([\d\.]+)<\/title>/},
    {:regexp=>/<div class="powered"><a href="http:\/\/www.docebo.com\/\?[a-z]+" target="_blank" alt="Powered by Docebo ." title="Powered by Docebo .">Powered by Docebo .<\/a><\/div>/},
    {:search=>"headers", :text=>'docebo_session='},
    {:text=>'Powered by <a href="http://www.docebo.com/?versions" onclick="window.open(this.href); return false;">Docebo <sup>&reg;</sup></a>'},
    {:text=>'Powered by Docebo'},
    {:text=>'lang_setup.setBody("<ul class=\"link_list_inline\" id=\"language_selection\"><li><a class=\"lang-sprite lang_'},
    {:version=>/Powered by <a href="http:\/\/www\.docebo\.com\/\?versions" onclick="window\.open\(this\.href\); return false;">Docebo <sup>&reg;<\/sup> (Community|Enterprise) Edition<\/a>/},
    {:version=>/Powered by Docebo <sup>&reg;<\/sup> (Community|Enterprise) Edition/}
]
passive do
	m=[]
	if @body =~ /<title>Docebo installer<\/title>/ and @body =~ /<h1>Docebo ([\d\.]+) - Installation<\/h1>/
		m << { :string=>"Install Page", :version=>@body.scan(/<h1>Docebo ([\d\.]+) - Installation<\/h1>/) }
	end 
	m
end
end
