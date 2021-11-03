Plugin.define do
name "Subdreamer-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Whether your goal is creating a simple or full scale website, Subdreamer will get you there by providing unbeatable content management tools."
website "http://www.subdreamer.com/"
matches [
{:name=>'GHDB: "powered by Subdreamer CMS"',
:certainty=>75,
:ghdb=>'"powered by Subdreamer CMS"'
},
{:name=>"powered by text #1",
:certainty=>100,
:text=>'<a href="http://www.subdreamer.com" target="_blank" class="copyright">Website powered by Subdreamer CMS</a>'
},
{:name=>"powered by text #2",
:certainty=>100,
:regexp=>/<a href="http:\/\/www.subdreamer.com[\/]*" title="Website powered by Subdreamer[\ CMS]*">Website powered by Subdreamer[\ CMS]*<\/a>/
},
{:name=>"login page text",
:certainty=>100,
:text=>'<div id="copyright">Powered by <b>Subdreamer CMS</b></div>'
},
{:name=>"old login page text",
:certainty=>100,
:text=>'<td class="logintitle" height="18">Subdreamer Admin Panel</td>'
}
]
passive do
        m=[]
        m << {:name=>"sdsessionid Cookie" } if @headers["set-cookie"] =~ /sdsessionid=[a-z0-9]{32}/
	m
end
end
