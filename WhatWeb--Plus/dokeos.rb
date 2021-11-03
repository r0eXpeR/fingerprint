Plugin.define do
name "Dokeos"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Dokeos is an open source online learning suite. It provides all the features needed for e-learning and blended learning management : From Authoring to Reporting."
website "http://www.dokeos.com/"
dorks [
'intitle:"Dokeos has not been installed"',
'"Portal Dokeos"'
]
matches [
    {:certainty=>25, :text=>'<ul id="dokeostabs">'},
    {:certainty=>75, :text=>'<link href="http://www.dokeos.com" rel="Copyright" />'},
    {:certainty=>75, :text=>'<link href="http://www.dokeos.com/documentation.php" rel="Help" />'},
    {:certainty=>75, :text=>'<link href="http://www.dokeos.com/team.php" rel="Author" />'},
    {:certainty=>75, :text=>'<title>Dokeos has not been installed</title>'},
    {:regexp=>/(?:Portal <a[^>]+>Dokeos|@import "[^"]+dokeos_blue)/},
    {:regexp=>/<form action="main\/install\/index\.php" method="get"><button class="save" type="submit"[^>]+value="&nbsp;&nbsp; Click to INSTALL (Dokeos|DOKEOS)[\s]+&nbsp;&nbsp;" >Click to INSTALL (Dokeos|DOKEOS)[\s]*<\/button><\/form><br \/>/, :string=>"Install Page"},
    {:search=>'body', :regexp=>/Dokeos/},
    {:search=>'headers[x-powered-by]', :regexp=>/Dokeos/},
    {:string=>/<div class="copyright">[^<]+<a href="http:\/\/www\.dokeos\.com" target="_blank">[\s]*Dokeos [\d\.]*<\/a> &copy; (20[\d]{2})[\s]*<\/div>/},
    {:text=>'<!-- start of #main wrapper for #content and #menu divs -->'},

    {:text=>'<meta name="Generator" content="Dokeos">'},
    {:text=>'content="Dokeos'},
    {:text=>'href="http://www.dokeos.com" rel="Copyright'},
    {:text=>'name="Generator" content="Dokeos'},
    {:version=>/<div class="copyright">[^<]+<a href="http:\/\/www\.dokeos\.com" target="_blank">[\s]*Dokeos ([\d\.]+)<\/a>/},
    {:version=>/<title>&mdash; Dokeos Installation &mdash; Version ([\d\.]+)<\/title>/, :string=>"Install Page"}
]
end
