Plugin.define do
name "TCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Content management system by Tanzarine Technology Ltd"
website "http://www.tanzarine.co.uk/Articles/cms.html"
dorks [
'"powered by TCMS"'
]
matches [
{ :ghdb=>'"powered by TCMS"', :certainty=>75 },
]
passive do
        m=[]
	m << {:name=>"TCMS_SESS_ID Cookie" } if @headers["set-cookie"] =~ /TCMS_SESS_ID=/
        if @body =~ /				<a style="color:#999;" href="http:\/\/www.arsmedia-nidda.de">arsmedia<\/a>/
		if @body =~ /powered by TCMS v[0-9\.]+ &copy; [0-9]{4} by/
	                version=@body.scan(/powered by TCMS v([\d\.]+) &copy; [0-9]{4} by/).flatten
        	        m << {:version=>version}
		end
        end
	if @body =~ /<span class="copyright">Powered by tCMS v[\d\.]+ &copy;[0-9]{4} Tanzarine Technology Ltd<\/span>/
		version=@body.scan(/<span class="copyright">Powered by tCMS v([\d\.]+) &copy;[0-9]{4} Tanzarine Technology Ltd<\/span>/)[0][0]
		m << {:version=>version}
	end
        m
end
end
