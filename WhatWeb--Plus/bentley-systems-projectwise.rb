Plugin.define do
name "Bentley-Systems-ProjectWise"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ProjectWise - Project Collaboration and Content Management Software for Architecture, Construction, and Engineering Projects"
website "http://www.bentley.com/en-US/Products/ProjectWise"
dorks [
'intitle:"ProjectWise Web Server" "ProjectWise Web Server"'
]
matches [
    {:certainty=>75, :text=>'<!-- Initially invisible login form -->'},
    {:regexp=>/<title>\s+ProjectWise Web Server\s+<\/title>/},
    {:search=>"headers", :text=>'Bentley.WebSession='},
    {:search=>"headers[set-cookie]", :regexp=>/Bentley.WebSession=/},
    {:text=>'</title><meta http-equiv="X-UA-Compatible" content="IE=8" /><link rel="shortcut icon" href="ProjectWise.ico" />'},
    {:text=>'ProjectWise Web Server'},
    {:text=>'href="ProjectWise.ico'},
    {:url=>"/ProjectWise.ico", :md5=>"c20606b0a22e4c91940798a485d7eff7"}
]
end
