Plugin.define do
name "Axigen-Mail-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Axigen is an integrated email, calendaring & collaboration platform, masterfully built on our unique Linux mail server technology, for increased speed & security."
website "http://www.axigen.com/"
dorks [
'"powered by Axigen Mail Server"'
]
matches [
    {:search=>"headers", :text=>'Axigen-Webmail'},
    {:text=>'            top.opener.location.href="/?login=";'},
    {:text=>'<div class="nojsContainer"><h1>In order to access AXIGEN Webmail, <br />you must enable Javascript in your browser!</h1></div>'},
    {:text=>'<div>Powered by <a href="http://www.axigen.com" target="_blank" class="gray">Axigen Mail Server</a></div>'},
    {:text=>'AXIGEN Webmail -'},
    {:text=>'Powered by <a href="http://www.axigen.com/" target="_blank">Axigen Mail Server</a>'},
    {:version=>/<title>AXIGEN Webmail - v([\d\.]+)<\/title>/}
]
passive do
        m=[]
	if @body =~ /<p>Powered by <a href="http:\/\/www.axigen.com[\/]*" target="_blank">Axigen Mail Server<\/a><\/p>[\s\r\n]*<p>Version ([\d\.]+)<\/p>/
		m << { :version=>@body.scan(/<p>Version ([\d\.]+)<\/p>/)[0][0] }
	end
	m
end
end
