Plugin.define do
name "WSN-Links"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "WSN Links is a links directory with google pageranks, link checking, reciprocal linking facilities and much more. Multilingual and highly extensible, it offers more than you could imagine in a links directory."
website "http://www.wsnlinks.com/"
matches [
{ :text=>'<title>WSN Links Administration Panel</title>' },
{ :version=>/<span class="group" style="margin-left: 8px;">WSN Links ([\d\.]+) Admin Login<\/span>/ },
{ :version=>/<span class="group">WSN Links ([\d\.]+) Admin Panel<\/span>/ },
{ :certainty=>25, :text=>'<!-- place any jquery-dependent script tags that need to be before the /head tag in here -->' },
{ :certainty=>25, :regexp=>/<div class="boxtitle" on[c|C]lick="minmax\('[a-z]+box'\)"><img src=/ },
{ :text=>'<textarea readonly rows="20" cols="75">WSN Links License Agreement' },
]
passive do
	m=[]
	if @body =~ /<title>WSN Links<\/title>/
		if @body =~ /<p>WSN Links is unable to render this page. The reason is described below:<\/p>/ and @body =~ /<p>Version info: WSN Links ([\d\.]+)<\/p>/
			m << { :version=>@body.scan(/<p>Version info: WSN Links ([\d\.]+)<\/p>/) }
		end
		if @body =~ /<div class="main">Non-numeric id value given in creating object.<\/div>/ and @body =~ /<p>WSN Links ([\d\.]+)<\/p>/
			m << { :version=>@body.scan(/<p>WSN Links ([\d\.]+)<\/p>/) }
		end
	end
	m
end
end
