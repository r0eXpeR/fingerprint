Plugin.define do
name "phpMyTourney"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "phpMyTourney is a PHP and MySQL script provide tournament hosting. Websites used to be http://phpmytourney.sourceforge.net/ and http://phpmytourney.servegame.com/"
website "https://sourceforge.net/projects/phpmytourney/"
dorks [
'"Powered by phpmytourney" "Version"'
]
matches [
{ :text=>"Powered by <a href=\"http://phpmytourney.sourceforge.net/\"><font face='Arial' size='1'>phpMyTourney</font> </a>" },
{ :text=>'ERROR : page not properly called' },
]
passive do
        m=[]
        if @body =~ /Powered by <a href="http:\/\/phpmytourney.sourceforge.net\/"[^>]+>phpMyTourney<\/a>./
		if @body =~ /Version ([\d\.a-z]+)/
			version=@body.scan(/Version ([\d\.a-z]+)/)[0][0]
	                m << {:version=>version}
		end
        end
	if @body =~ /Powered by <a href="[http:\/\/]*phpmytourney.sourceforge.net\/"><font color="#999933">phpMyTourney<\/font><\/a>.Version [\d\.a-z]+/
		version=@body.scan(/Powered by <a href="[http:\/\/]*phpmytourney.sourceforge.net\/"><font color="#999933">phpMyTourney<\/font><\/a>.Version ([\d\.a-z]+)/)[0][0]
		m << {:version=>version}
	end
        m
end
end
