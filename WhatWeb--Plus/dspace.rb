Plugin.define do
name "DSpace"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "An Open Archive Initiative (OAI) - compliant open-source software released by MIT for archiving eprints and other kinds of academic content."
website "http://www.dspace.org/"
dorks [
'"Powered by DSpace, version"'
]
matches [
    {:text=>'<a href="http://www.dspace.org">DSpace Software'},
    {:text=>'<meta content="DSpace" name="Generator" />'},
    {:text=>'content="DSpace'},
    {:version=>/<meta name="Generator" content="DSpace ([\d\.]+)" \/>/},
    {:version=>/[pP]owered by <a href="http:\/\/(www\.)?dspace\.org"[^>]*>DSpace<\/a>, version ([\d\.]+)/, :offset=>1 }
]
end
